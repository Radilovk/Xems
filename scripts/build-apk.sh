#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT/scripts/env.sh"

OUT="$ROOT/dist/xems-25.apk"
STAGING="$(mktemp -d)"
trap 'rm -rf "$STAGING"' EXIT

echo "Packaging XEMS-25 APK from $ROOT ..."

# Copy APK contents, excluding VCS/build artifacts and prior outputs.
tar -C "$ROOT" -cf - \
  --exclude='.git' \
  --exclude='dist' \
  --exclude='scripts' \
  --exclude='AGENTS.md' \
  --exclude='*.md' \
  . | tar -C "$STAGING" -xf -

# Repackaged APKs must be re-signed; remove the original signature.
rm -rf "$STAGING/META-INF"

mkdir -p "$ROOT/dist"
(
  cd "$STAGING"
  # API 30+ requires resources.arsc uncompressed and 4-byte aligned.
  zip -qr "$OUT" . -x resources.arsc
  zip -q0 "$OUT" resources.arsc
)

KEYSTORE="$ROOT/dist/debug.keystore"
if [[ ! -f "$KEYSTORE" ]]; then
  keytool -genkeypair -v \
    -keystore "$KEYSTORE" \
    -alias androiddebugkey \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -storepass android -keypass android \
    -dname "CN=Android Debug,O=Android,C=US"
fi

SIGNED="$ROOT/dist/xems-25-signed.apk"
zipalign -p -f 4 "$OUT" "$ROOT/dist/xems-25-aligned.apk"
apksigner sign \
  --ks "$KEYSTORE" \
  --ks-pass pass:android \
  --key-pass pass:android \
  --out "$SIGNED" \
  "$ROOT/dist/xems-25-aligned.apk"

echo "Built signed APK: $SIGNED"
aapt dump badging "$SIGNED" | head -5
