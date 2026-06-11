#!/usr/bin/env bash
# Shared Android SDK environment for XEMS-25 (extracted APK repo).
export ANDROID_HOME="${ANDROID_HOME:-$HOME/android-sdk}"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/30.0.3:$ANDROID_HOME/emulator:$PATH"
