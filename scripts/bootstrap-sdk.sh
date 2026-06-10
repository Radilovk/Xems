#!/usr/bin/env bash
# One-time Android SDK bootstrap for Cloud Agent VMs (idempotent).
set -euo pipefail

export ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

if [[ -x "$ANDROID_HOME/platform-tools/adb" ]]; then
  echo "Android SDK already present at $ANDROID_HOME"
  exit 0
fi

mkdir -p "$ANDROID_HOME/cmdline-tools"
tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

curl -fsSL -o "$tmpdir/commandlinetools.zip" \
  "https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip"
unzip -q -o "$tmpdir/commandlinetools.zip" -d "$ANDROID_HOME/cmdline-tools"
mv "$ANDROID_HOME/cmdline-tools/cmdline-tools" "$ANDROID_HOME/cmdline-tools/latest"

printf 'y\n%.0s' {1..200} | sdkmanager --licenses >/dev/null
sdkmanager \
  "platform-tools" \
  "build-tools;30.0.3" \
  "platforms;android-30" \
  "emulator" \
  "system-images;android-30;google_apis;x86_64"

echo "no" | avdmanager create avd -n xems_avd \
  -k "system-images;android-30;google_apis;x86_64" -d pixel_c || true

echo "Android SDK ready at $ANDROID_HOME"
