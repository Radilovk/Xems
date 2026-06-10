#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APKTOOL_JAR="${APKTOOL_JAR:-/tmp/apktool.jar}"
ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"

if [[ ! -f "$APKTOOL_JAR" ]]; then
  curl -sL https://github.com/iBotPeaches/apktool/releases/download/v2.10.0/apktool_2.10.0.jar -o "$APKTOOL_JAR"
fi

echo "Building APK from xems-apk project..."
java -jar "$APKTOOL_JAR" b "$ROOT_DIR/xems-apk" -o "$ROOT_DIR/xems-modified-unsigned.apk"

if [[ ! -f /tmp/debug.keystore ]]; then
  keytool -genkey -v -keystore /tmp/debug.keystore -storepass android -alias androiddebugkey \
    -keypass android -keyalg RSA -keysize 2048 -validity 10000 \
    -dname "CN=Debug, OU=Debug, O=Debug, L=Debug, S=Debug, C=US" >/dev/null 2>&1
fi

"$ANDROID_HOME/build-tools/34.0.0/apksigner" sign \
  --ks /tmp/debug.keystore --ks-pass pass:android --key-pass pass:android \
  --out "$ROOT_DIR/xems-modified.apk" "$ROOT_DIR/xems-modified-unsigned.apk"

echo "Signed APK: $ROOT_DIR/xems-modified.apk"
