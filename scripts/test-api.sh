#!/usr/bin/env bash
# Smoke-test connectivity to the XEMS Plus backend (login endpoint).
set -euo pipefail

BASE_URL="${XEMS_API_BASE:-https://xemsplus.com/gymproject/app}"
USER="${XEMS_TEST_USER:-}"
PASS="${XEMS_TEST_PASS:-}"

echo "Checking API base: $BASE_URL"
code="$(curl -s -o /dev/null -w '%{http_code}' "$BASE_URL/")"
echo "GET / -> HTTP $code"
[[ "$code" == "200" ]] || exit 1

if [[ -z "$USER" || -z "$PASS" ]]; then
  echo "SKIP login test (set XEMS_TEST_USER and XEMS_TEST_PASS for authenticated check)"
  exit 0
fi

echo "POST users/loginWithoutVertifyCode ..."
resp="$(curl -s -X POST "$BASE_URL/users/loginWithoutVertifyCode" \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  --data-urlencode "username=$USER" \
  --data-urlencode "password=$PASS")"
echo "$resp" | head -c 500
echo
