# AGENTS.md

## Cursor Cloud specific instructions

This repository contains an **extracted Android APK** for **XEMS-25** (`com.isaigu.gymapp25`), not Gradle/Java source. Development work here is repackaging, inspecting, and running the app against the hosted **XEMS Plus** API at `https://xemsplus.com/gymproject/app`.

### Services

| Service | Required? | Notes |
|---------|-----------|-------|
| Android SDK (`$HOME/android-sdk`) | Yes | Installed once per VM; see `scripts/env.sh` |
| Android emulator (`xems_avd`, API 30) | Yes for on-device demo | No KVM in Cloud Agent VMs — use `-accel off` (slow cold boot ~4–6 min) |
| XEMS Plus cloud API | Yes for login/sync | External; reachable over HTTPS |
| BLE EMS hardware | Optional | Not available in emulator |

### Common commands

Source the SDK path first (or rely on scripts which source `scripts/env.sh`):

```bash
source scripts/env.sh
./scripts/verify-env.sh    # toolchain + APK + API checks
./scripts/build-apk.sh     # dist/xems-25-signed.apk
./scripts/start-emulator.sh
./scripts/install-and-launch.sh
./scripts/test-api.sh      # optional login if XEMS_TEST_USER/PASS set
```

### Gotchas

- **APK repackaging for API 30+**: `resources.arsc` must be stored uncompressed; `build-apk.sh` uses `zip -0` and `zipalign -p`.
- **Emulator**: `/dev/kvm` is absent — `start-emulator.sh` passes `-accel off`. After `sys.boot_completed=1`, wait an extra ~2 minutes before `adb install` or StorageManager may NPE.
- **No traditional lint/unit tests** in this repo; validation is `verify-env.sh`, APK `aapt dump badging`, and install/launch on emulator.
- **Trainer credentials** are not in the repo; set `XEMS_TEST_USER` / `XEMS_TEST_PASS` for `test-api.sh`.
