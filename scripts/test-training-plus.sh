#!/usr/bin/env bash
# Automated smoke test: login + open Training "+" dialog.
# Usage: ./scripts/test-training-plus.sh [email] [password]
set -euo pipefail

EMAIL="${1:-Radilov.k@gmail.com}"
PASSWORD="${2:-a123456}"
APK="${APK:-/workspace/xems-modified.apk}"
PKG="com.isaigu.gymapp25"
ACTIVITY="com.isaigu.gymapp.MainActivity"

if ! command -v adb >/dev/null; then
  echo "adb not found"
  exit 1
fi

if ! adb devices | awk 'NR>1 && $2=="device"{found=1} END{exit !found}'; then
  echo "No adb device connected"
  exit 1
fi

adb install -r "$APK" >/dev/null
adb logcat -c
adb shell am force-stop "$PKG"
adb shell am start -n "$PKG/$ACTIVITY" >/dev/null
sleep 4

# Dismiss possible system dialogs
adb shell input keyevent KEYCODE_BACK 2>/dev/null || true
sleep 1

# Tap email/password fields (layout-dependent; may need adjustment per device)
adb shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1 || true
adb pull /sdcard/ui.xml /tmp/ui.xml >/dev/null 2>&1 || true

# Login via monkey text if fields visible
adb shell input text "$EMAIL" 2>/dev/null || true
adb shell input keyevent 61
adb shell input text "$PASSWORD" 2>/dev/null || true
adb shell input keyevent 66
sleep 6

# Training tab is usually first bottom tab
adb shell input tap 200 1700 2>/dev/null || adb shell input tap 150 900
sleep 2
# Empty slot +
adb shell input tap 400 500 2>/dev/null || adb shell input tap 400 300
sleep 3

if adb logcat -d | grep -E "FATAL EXCEPTION|AndroidRuntime.*isaigu" | tail -20; then
  echo "FAIL: crash detected in logcat"
  exit 1
fi

echo "PASS: no fatal crash in logcat after Training + tap"
