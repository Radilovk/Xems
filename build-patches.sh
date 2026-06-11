#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"
BUILD_TOOLS="${ANDROID_HOME}/build-tools/30.0.3"
ANDROID_JAR="${ANDROID_HOME}/platforms/android-30/android.jar"
WORK_DIR="${ROOT_DIR}/.patch-build"
CLASSES_DIR="${WORK_DIR}/classes"
DEX_DIR="${WORK_DIR}/dex"
SMALI_OUT="${WORK_DIR}/smali-out"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "Missing ${ANDROID_JAR}. Install Android SDK platform 30."
  exit 1
fi

if [[ ! -f "${ROOT_DIR}/xems-modified.apk" ]]; then
  echo "Missing xems-modified.apk for classpath extraction."
  exit 1
fi

DEX2JAR_DIR="${DEX2JAR_DIR:-/tmp/dex-tools-v2.4}"
DEX2JAR="${DEX2JAR_DIR}/d2j-dex2jar.sh"
if [[ ! -x "${DEX2JAR}" ]]; then
  echo "Missing ${DEX2JAR}. Download dex-tools-v2.4 and set DEX2JAR_DIR."
  exit 1
fi

mkdir -p "${CLASSES_DIR}" "${DEX_DIR}" "${WORK_DIR}/apk-jars"
rm -rf "${WORK_DIR}/apk-jars"/*
unzip -q -o "${ROOT_DIR}/xems-modified.apk" "classes*.dex" -d "${WORK_DIR}/apk-jars"

CLASSPATH="${ANDROID_JAR}"
for dex in "${WORK_DIR}/apk-jars"/classes*.dex; do
  [[ -f "$dex" ]] || continue
  jar="${WORK_DIR}/apk-jars/$(basename "$dex" .dex).jar"
  "${DEX2JAR}" "$dex" -o "$jar" -f >/dev/null
  CLASSPATH="${CLASSPATH}:${jar}"
done

mapfile -t PATCH_SOURCES < <(find "${ROOT_DIR}/patches/src" -name "*.java" | sort)
echo "Compiling ${#PATCH_SOURCES[@]} patch sources..."
javac -encoding UTF-8 -source 1.8 -target 1.8 -bootclasspath "${ANDROID_JAR}" -classpath "${CLASSPATH}" -d "${CLASSES_DIR}" "${PATCH_SOURCES[@]}"

echo "Dexing patched classes..."
find "${CLASSES_DIR}" -name 'R*.class' -delete
"${BUILD_TOOLS}/dx" --dex --output="${DEX_DIR}/classes.dex" "${CLASSES_DIR}"

BAKSMALI_CP="${WORK_DIR}/baksmali-cp"
mkdir -p "${BAKSMALI_CP}"
for artifact in \
  "org/smali/baksmali/2.5.2/baksmali-2.5.2.jar" \
  "org/smali/dexlib2/2.5.2/dexlib2-2.5.2.jar" \
  "org/smali/util/2.5.2/util-2.5.2.jar" \
  "com/google/guava/guava/31.1-jre/guava-31.1-jre.jar" \
  "com/beust/jcommander/1.82/jcommander-1.82.jar"; do
  jar_name="$(basename "$artifact")"
  if [[ ! -f "${BAKSMALI_CP}/${jar_name}" ]]; then
    curl -sL "https://repo1.maven.org/maven2/${artifact}" -o "${BAKSMALI_CP}/${jar_name}"
  fi
done
BAKSMALI_CLASSPATH="${BAKSMALI_CP}/baksmali-2.5.2.jar:${BAKSMALI_CP}/dexlib2-2.5.2.jar:${BAKSMALI_CP}/util-2.5.2.jar:${BAKSMALI_CP}/guava-31.1-jre.jar:${BAKSMALI_CP}/jcommander-1.82.jar"

rm -rf "${SMALI_OUT}"
java -cp "${BAKSMALI_CLASSPATH}" org.jf.baksmali.Main disassemble "${DEX_DIR}/classes.dex" -o "${SMALI_OUT}"

echo "Merging smali into xems-apk/smali_classes2..."
while IFS= read -r smali_file; do
  rel="${smali_file#${SMALI_OUT}/}"
  dest="${ROOT_DIR}/xems-apk/smali_classes2/${rel}"
  mkdir -p "$(dirname "${dest}")"
  cp "${smali_file}" "${dest}"
done < <(find "${SMALI_OUT}/com/isaigu/gymapp" -name "*.smali")

echo "Patch smali merge complete."
