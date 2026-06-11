#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APKTOOL_JAR="${APKTOOL_JAR:-/tmp/apktool.jar}"
ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"
BUILD_TOOLS="${ANDROID_HOME}/build-tools/30.0.3"

if [[ ! -f "$APKTOOL_JAR" ]]; then
  curl -sL https://github.com/iBotPeaches/apktool/releases/download/v2.10.0/apktool_2.10.0.jar -o "$APKTOOL_JAR"
fi

echo "Building APK from xems-apk project (aapt2)..."
java -jar "$APKTOOL_JAR" b "$ROOT_DIR/xems-apk" -o "$ROOT_DIR/xems-modified-raw.apk" --use-aapt2

echo "Normalizing APK structure for install compatibility..."
python3 "$ROOT_DIR/fix-apk.py" "$ROOT_DIR/xems-modified-raw.apk" "$ROOT_DIR/xems-modified-unsigned.apk"

echo "Zipaligning..."
"$BUILD_TOOLS/zipalign" -f -p 4 \
  "$ROOT_DIR/xems-modified-unsigned.apk" "$ROOT_DIR/xems-modified-aligned.apk"
mv "$ROOT_DIR/xems-modified-aligned.apk" "$ROOT_DIR/xems-modified-unsigned.apk"

if [[ ! -f /tmp/debug.keystore ]]; then
  keytool -genkey -v -keystore /tmp/debug.keystore -storepass android -alias androiddebugkey \
    -keypass android -keyalg RSA -keysize 2048 -validity 10000 \
    -dname "CN=Debug, OU=Debug, O=Debug, L=Debug, S=Debug, C=US" >/dev/null 2>&1
fi

echo "Signing (v1+v2+v3)..."
"$BUILD_TOOLS/apksigner" sign \
  --ks /tmp/debug.keystore --ks-pass pass:android --key-pass pass:android \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --min-sdk-version 21 \
  --out "$ROOT_DIR/xems-modified.apk" "$ROOT_DIR/xems-modified-unsigned.apk"

echo "Verifying..."
"$BUILD_TOOLS/apksigner" verify --verbose "$ROOT_DIR/xems-modified.apk" | head -8

echo "Signed APK: $ROOT_DIR/xems-modified.apk"
"$BUILD_TOOLS/aapt" dump badging "$ROOT_DIR/xems-modified.apk" | head -4
