#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT/scripts/env.sh"

echo "=== XEMS-25 environment verification ==="

check_cmd() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "OK  $1: $($1 --version 2>/dev/null | head -1 || $1 -version 2>/dev/null | head -1 || echo present)"
  else
    echo "FAIL $1 not found"
    exit 1
  fi
}

check_cmd adb
check_cmd aapt
check_cmd apksigner
check_cmd emulator

[[ -f "$ROOT/AndroidManifest.xml" ]] || { echo "FAIL AndroidManifest.xml missing"; exit 1; }
[[ -f "$ROOT/classes.dex" ]] || { echo "FAIL classes.dex missing"; exit 1; }
echo "OK  APK payload present"

if [[ -f "$ROOT/dist/xems-25-signed.apk" ]]; then
  aapt dump badging "$ROOT/dist/xems-25-signed.apk" | grep -E 'package:|sdkVersion:|application-label:' || true
else
  echo "INFO signed APK not built yet (run scripts/build-apk.sh)"
fi

HTTP_CODE="$(curl -s -o /dev/null -w '%{http_code}' https://xemsplus.com/gymproject/app/)"
if [[ "$HTTP_CODE" == "200" ]]; then
  echo "OK  XEMS Plus API reachable (HTTP $HTTP_CODE)"
else
  echo "WARN XEMS Plus API returned HTTP $HTTP_CODE"
fi

echo "=== verification complete ==="
