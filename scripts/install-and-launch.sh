#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT/scripts/env.sh"

APK="$ROOT/dist/xems-25-signed.apk"
PKG="com.isaigu.gymapp25"
ACTIVITY="com.isaigu.gymapp.MainActivity"

[[ -f "$APK" ]] || "$ROOT/scripts/build-apk.sh"

"$ROOT/scripts/start-emulator.sh"

echo "Installing $APK ..."
adb install -r "$APK"

echo "Launching XEMS-25 ..."
adb shell am start -n "$PKG/$ACTIVITY"

echo "Installed and launched. Current activity:"
adb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp' | head -2
