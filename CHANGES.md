# XEMS-25 — оригинален APK (без модификации)

Приложението е възстановено в **абсолютно оригинален вид** от vendor APK в git (`51f0d64`). Няма Java patches (`patches/src` е празен).

## Важно: apktool променя bytecode-а

`./build-apk.sh` (apktool decode → recompile) **не** възпроизвежда оригиналния DEX — дори при stock smali `classes2.dex` получава различен MD5 и `targetSdkVersion` става 33 вместо 30. Това обяснява crash-овете при „оригинален“ build.

За вярна копия на vendor APK използвайте **директно репакване** (без apktool):

```bash
./build-original-apk.sh
```

Изход: `xems-original.apk` (и копие `xems-modified.apk`) — version `1.0.0 - 240704`, app name `XEMS-25`, `targetSdkVersion` 30, непроменен `classes2.dex`.

За бъдещи patch-ове: `./build-apk.sh` + `build-patches.sh` — след като се потвърди стабилна база.

## Инсталация

Деинсталирайте съществуващото приложение преди инсталация (различен подпис).
