#!/usr/bin/env bash
# Build xems-original.apk by repackaging vendor DEX/resources — NO apktool recompile.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"
BUILD_TOOLS="${ANDROID_HOME}/build-tools/30.0.3"
WORK_DIR="${ROOT_DIR}/.original-build"
SOURCE_DIR="${WORK_DIR}/apk-contents"
GIT_REF="${XEMS_ORIGINAL_GIT_REF:-51f0d64}"

mkdir -p "${WORK_DIR}"
rm -rf "${SOURCE_DIR}"
mkdir -p "${SOURCE_DIR}"

echo "Extracting original APK contents from git ${GIT_REF}..."
git -C "${ROOT_DIR}" archive "${GIT_REF}" | tar -x -C "${SOURCE_DIR}"

RAW_APK="${WORK_DIR}/xems-original-raw.apk"
UNSIGNED_APK="${WORK_DIR}/xems-original-unsigned.apk"
ALIGNED_APK="${WORK_DIR}/xems-original-aligned.apk"

echo "Packing APK (preserving original DEX bytes)..."
python3 "${ROOT_DIR}/scripts/pack-original-apk.py" "${SOURCE_DIR}" "${RAW_APK}"

echo "Normalizing APK structure..."
python3 "${ROOT_DIR}/fix-apk.py" "${RAW_APK}" "${UNSIGNED_APK}"

echo "Zipaligning..."
"${BUILD_TOOLS}/zipalign" -f -p 4 "${UNSIGNED_APK}" "${ALIGNED_APK}"

if [[ ! -f /tmp/debug.keystore ]]; then
  keytool -genkey -v -keystore /tmp/debug.keystore -storepass android -alias androiddebugkey \
    -keypass android -keyalg RSA -keysize 2048 -validity 10000 \
    -dname "CN=Debug, OU=Debug, O=Debug, L=Debug, S=Debug, C=US" >/dev/null 2>&1
fi

echo "Signing..."
"${BUILD_TOOLS}/apksigner" sign \
  --ks /tmp/debug.keystore --ks-pass pass:android --key-pass pass:android \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --min-sdk-version 21 \
  --out "${ROOT_DIR}/xems-original.apk" "${ALIGNED_APK}"

cp "${ROOT_DIR}/xems-original.apk" "${ROOT_DIR}/xems-modified.apk"

echo "Verifying DEX integrity..."
ORIG_HASH=$(md5sum "${SOURCE_DIR}/classes2.dex" | awk '{print $1}')
BUILT_HASH=$(unzip -p "${ROOT_DIR}/xems-original.apk" classes2.dex | md5sum | awk '{print $1}')
if [[ "${ORIG_HASH}" != "${BUILT_HASH}" ]]; then
  echo "ERROR: classes2.dex changed during pack! ${ORIG_HASH} != ${BUILT_HASH}"
  exit 1
fi

echo "Verifying signature..."
"${BUILD_TOOLS}/apksigner" verify --verbose "${ROOT_DIR}/xems-original.apk" | head -6
"${BUILD_TOOLS}/aapt" dump badging "${ROOT_DIR}/xems-original.apk" | head -4
echo "Built: ${ROOT_DIR}/xems-original.apk (also copied to xems-modified.apk)"
