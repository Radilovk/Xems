#!/usr/bin/env bash
set -euo pipefail

source "$(cd "$(dirname "$0")" && pwd)/env.sh"

AVD_NAME="${AVD_NAME:-xems_avd}"
LOG="/tmp/xems-emulator.log"

if adb devices 2>/dev/null | grep -q 'emulator-.*device'; then
  echo "Emulator already running"
  adb devices
  exit 0
fi

echo "Starting emulator ($AVD_NAME) in headless mode ..."
nohup emulator -avd "$AVD_NAME" \
  -no-window \
  -no-audio \
  -no-boot-anim \
  -no-metrics \
  -accel off \
  -gpu swiftshader_indirect \
  -no-snapshot-save \
  >"$LOG" 2>&1 &

echo "Waiting for device ..."
adb wait-for-device
for i in $(seq 1 90); do
  if adb shell getprop sys.boot_completed 2>/dev/null | grep -q 1; then
    echo "Emulator booted"
    adb devices
    exit 0
  fi
  sleep 2
done

echo "Emulator did not finish booting within timeout. See $LOG"
exit 1
