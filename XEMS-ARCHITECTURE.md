# XEMS-25 — Архитектура и ръководство за модификация

> Референционен документ за агента и разработчика. Описва какво представлява приложението, как е организиран кодът, как се събира APK и какво може **безопасно** да се променя.

Последна актуализация: 2026-09-09

---

## 1. Какво представлява приложението

**XEMS-25** (`com.isaigu.gymapp25`) е Android приложение за **EMS фитнес студиа** (електрическа мускулна стимулация). Треньорът управлява до **6 клиента едновременно**, свързва всеки към **Bluetooth LE EMS устройство**, задава тренировъчна програма и следи прогрес в реално време.

| Характеристика | Стойност |
|---|---|
| Package | `com.isaigu.gymapp25` |
| Версия | `1.0.0 - 240704` (versionCode 1) |
| minSdk | 21 |
| targetSdk (vendor) | 30 |
| targetSdk (след apktool build) | 33 ⚠️ |
| Ориентация | Landscape (1280×720 dp design) |
| Backend | `https://xemsplus.com/gymproject/app` |
| BLE библиотека | FastBLE (`com.clj.fastble`) + собствен протокол |

### Основен UX поток

```
Splash → Login → Start → MainActivity (5 таба)
                              ├── Train      — активни тренировки + BLE контрол
                              ├── Users      — до 6 клиента
                              ├── Main       — начален/обобщен екран
                              ├── Video      — обучителни видеа
                              └── Settings   — език, настройки, sign out
```

Подробно UX/UI описание: [`xems.md`](xems.md).

---

## 2. Структура на repository-то

```
/workspace/
├── xems-apk/                  ← ОСНОВЕН проект за редакция (apktool decode)
│   ├── apktool.yml
│   ├── AndroidManifest.xml
│   ├── res/                   ← layouts, strings, drawable, mipmap
│   ├── assets/
│   ├── smali/                 ← библиотеки (5351 файла) — Glide, support, okhttp...
│   ├── smali_classes2/        ← ПРИЛОЖЕНИЕТО XEMS (978 smali) ★
│   ├── smali_classes3..5/     ← малки допълнения
│   └── original/              ← оригинален подпис/манифест (не пипай)
│
├── [root raw APK contents]    ← vendor unpack от git 51f0d64 (DEX bytes)
│   ├── classes.dex .. classes5.dex
│   ├── AndroidManifest.xml
│   ├── res/, assets/, META-INF/
│
├── build-apk.sh               ← apktool recompile (smali + ресурси)
├── build-original-apk.sh        ← faithful repack (запазва DEX bytes)
├── build-patches.sh           ← Java patches → smali merge
├── fix-apk.py                 ← нормализация на ZIP структурата
├── scripts/pack-original-apk.py
├── xems-modified.apk          ← последен подписан build
├── CHANGES.md                 ← бележки за build рискове
└── xems.md                    ← UX/UI описание
```

### DEX разпределение

| DEX | Smali папка | Съдържание |
|---|---|---|
| classes.dex | `smali/` | Android Support Library, Glide, OkHttp, FastBLE, Jersey, UI libs |
| classes2.dex | `smali_classes2/` | **`com.isaigu.gymapp.*`** — целият бизнес код |
| classes3.dex | `smali_classes3/` | Допълнителни класове |
| classes4-5.dex | `smali_classes4/5/` | Минорни |

**Правило:** промени в логиката на XEMS → `smali_classes2/com/isaigu/gymapp/`.

---

## 3. Архитектура на кода (`com.isaigu.gymapp`)

```
com.isaigu.gymapp/
├── MainActivity.smali           ← единствен Activity, bottom nav, fragment host
├── BaseActivity / BaseFragment
├── CrashApplication.smali       ← Application class
├── BootBroadcastReceiver.smali
│
├── fragment/                    ← UI екрани
│   ├── SplashFragment
│   ├── LoginFragment            ← вход (username + password, без verify code)
│   ├── StartFragment
│   ├── MainFragment
│   ├── TrainFragment            ← ★ централен тренировъчен екран
│   ├── NewTrainFragment
│   ├── UserFragment             ← управление на клиенти (до 6)
│   ├── CalendarFragment
│   ├── VideoListFragment
│   └── SettingFragment          ← език, sign out, update
│
├── train/                       ← тренировъчна логика
│   ├── ble/                     ← FastBLE wrapper (BleDeviceManager, BleDeviceCommend)
│   └── utils/                   ← TrainRecordManager
│
├── ble/                         ← ★ EMS протокол (низко ниво)
│   ├── ProtocolController       ← команди към устройството
│   ├── Protocol / ProtocolParser
│   ├── BleController / AndroidBleController
│   └── BluetoothUuid
│
├── mgr/                         ← мениджъри
│   └── ApiMgr                   ← REST URLs, token, HTTP заявки
│
├── bean/                        ← data models (ProgramDataBean, UserBean, ...)
├── dialog/                      ← EditParameterDialog, picker dialogs, ...
├── calendar/                    ← CustomCalendar логика
├── message/                     ← Event bus (EventListener)
├── utils/                       ← OKHttpUtils, LanguageUtils, MD5Utils, XXTEATool, ...
└── widget/                      ← custom UI компоненти
    ├── WaveBallProgress         ← индикатор интензивност
    ├── AmountView / AmountView2 ← +/- регулатор mA
    ├── BatterView               ← батерия на BLE устройство
    ├── RangeSeekBar, SwitchButton, CustomCalendar, ...
    └── video/                   ← JZVideoPlayerExtend
```

---

## 4. Ключови подсистеми

### 4.1 REST API (`mgr/ApiMgr.smali`)

Base URL: `https://xemsplus.com/gymproject/app`

| Endpoint | Назначение |
|---|---|
| `users/loginWithoutVertifyCode` | Login |
| `users/getUserCustomers` | Списък клиенти |
| `users/submitUserData` | Добавяне/редакция клиент |
| `programtraindata/*` | Тренировъчни програми |
| `trainrecord/*` | История на тренировки |
| `video/getVideoListByPage` | Видео списък |
| `clientupdate/checkUpdateByAppType` | OTA update |
| `protocol/getCurrentProtocol` | Протокол текст |
| `file/upload` | Качване файлове |

Auth: static `ApiMgr.token` след login. Password salt: `ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt`.

HTTP клиент: `utils/OKHttpUtils.smali` (custom SSL, redirect interceptor).

### 4.2 BLE протокол (`ble/ProtocolController.smali`)

Използва FastBLE за GATT връзка. Команди към EMS устройство:

| Метод | Действие |
|---|---|
| `request_set_start` | Старт тренировка |
| `request_set_stop` | Стоп |
| `request_set_mode_10_part_parameter` | Интензивност за 10 body parts (11 int параметъра) |
| `request_get_mode_10_part_parameter` | Четене параметри |
| `request_set_mode_other_parameter` | Други mode параметри (Hz, duration, pulse) |
| `request_get_battery` | Ниво батерия |
| `request_get_firmware_version` | Firmware версия |

**10 EMS канала (body parts):** гърди, корем, гръб, кръст, седалище, рамо, бедро, подбедрица, задна страна и др. (drawable: `xiong`, `fubu`, `bei`, `yaobu`, `bibu`, `shoubi`, `tui`, `xiaotui`, `houxie`).

**UI → BLE връзка:** `TrainFragment$UserTrainAdapter` → `set_mode_10_part_parameter()` → `ProtocolController.request_set_mode_10_part_parameter()`.

**Два BLE слоя:**
- `ble/` — протокол и команди (ProtocolController)
- `train/ble/` — device manager (BleDeviceManager, scan/connect)

### 4.3 UI ресурси

| Тип | Път | Брой |
|---|---|---|
| Layouts (app) | `res/layout/*_fragment*.xml`, `*_layout.xml` | ~50 app layouts |
| Strings (default) | `res/values/strings.xml` | 287 реда |
| Strings (локали) | `res/values-*/strings.xml` | 84 езикови папки |
| Launcher | `res/mipmap-*/ic_launcher*.png` | |
| Assets | `assets/logo2.png`, `login_user_data.json` (encrypted) | |

Design: landscape tablet UI, `design_width_in_dp=1280`, `design_height_in_dp=720`.

---

## 5. Build pipeline

### 5.1 `./build-original-apk.sh` — Faithful repack ✅ безопасен

1. Извлича vendor съдържание от git `51f0d64`
2. `pack-original-apk.py` → ZIP без apktool
3. `fix-apk.py` → нормализация
4. zipalign + apksigner (debug keystore)
5. **Проверява MD5 на `classes2.dex`** — не се променя

**Използвай когато:** не променяш smali, само repack на оригинала.

### 5.2 `./build-apk.sh` — Apktool recompile ⚠️ променя DEX

1. `apktool b xems-apk` → recompile всички smali
2. `fix-apk.py` → zipalign → apksigner

**Странични ефекти (потвърдени):**
- `classes2.dex` MD5 се сменя
- `targetSdkVersion` 30 → 33
- compileSdkVersion 30 → 33
- Риск от runtime crash при сложни smali промени

**Използвай когато:** променяш smali или `xems-apk/res/` / `AndroidManifest.xml`.

### 5.3 `./build-patches.sh` — Java patch workflow

1. Компилира `patches/src/*.java` с classpath от DEX
2. `dx` → baksmali → merge в `smali_classes2/com/isaigu/gymapp/`
3. После `./build-apk.sh`

**Забележка:** `patches/` все още не съществува в repo.

### Инсталация

- Debug подпис → **деинсталирай** старото приложение преди инсталация
- Runtime тест: **реално Android устройство** (cloud средата няма емулатор)

---

## 6. Какво може БЕЗОПАСНО да се променя

### 🟢 Висока безопасност (ресурси)

| Промяна | Файл(ове) | Build | Риск |
|---|---|---|---|
| Текстове, етикети | `xems-apk/res/values/strings.xml` + `values-XX/` | `build-apk.sh` | Нисък |
| UI layouts (padding, visibility) | `xems-apk/res/layout/*.xml` | `build-apk.sh` | Нисък–среден |
| Цветове, стилове | `xems-apk/res/values/colors.xml`, `styles.xml` | `build-apk.sh` | Нисък |
| Изображения, икони | `xems-apk/res/drawable*`, `mipmap*` | `build-apk.sh` | Нисък |
| App label | `strings.xml` → `app_name` | `build-apk.sh` | Нисък (потвърдено) |
| Network security (debug) | `res/xml/network_security_config.xml` | `build-apk.sh` | Среден |

**Съвет:** след промяна на string — провери и съответните `values-de/`, `values-es/`, `values-it/` и т.н. (някои локали override-ват `app_name`).

### 🟡 Средна безопасност (конфигурация)

| Промяна | Файл(ове) | Бележки |
|---|---|---|
| Permissions | `xems-apk/AndroidManifest.xml` | Може да счупи BLE/location на нови Android |
| Backend URL | `ApiMgr.smali` (const-string URLs) | Трябва съвместим API |
| Splash/logo assets | `assets/logo*.png` | Безопасно визуално |
| Version string | `apktool.yml` + `strings.xml` | Косметично |

### 🟠 Ниска безопасност (логика — изисква device тест)

| Промяна | Файл(ове) | Риск |
|---|---|---|
| Login flow | `LoginFragment.smali`, `ApiMgr.smali` | Среден–висок |
| Train UI logic | `TrainFragment*.smali` | Висок — BLE интеграция |
| BLE протокол | `ProtocolController.smali`, `Protocol.smali` | **Много висок** — може да повреди устройството |
| Pulse/intensity limits | `TrainFragment$UserTrainAdapter.smali` | Висок — безопасност на клиента |
| Encryption | `XXTEATool.smali`, `login_user_data.json` | Висок |

### 🔴 Избягвай

| Действие | Защо |
|---|---|
| Масови промени в `smali/` (libs) | 5351 файла, няма нужда |
| Редакция на `original/META-INF/` | Чупи reference към vendor подпис |
| Пипане на `classes.dex` директно в root | Само за repack workflow |
| Apktool rebuild без device тест | DEX се променя, crash риск |

---

## 7. Препоръчителен workflow за агента

```
1. Идентифицирай типа промяна (ресурс / smali / API / BLE)
2. Редактирай в xems-apk/ (НЕ в root raw files, освен за repack-only)
3. Commit + push
4. Build:
   - само ресурси/UI     → ./build-apk.sh
   - без промени         → ./build-original-apk.sh
   - Java patch          → patches/src + ./build-patches.sh + ./build-apk.sh
5. Verify:
   - apksigner verify xems-modified.apk
   - aapt dump badging xems-modified.apk
   - aapt dump badging | rg application-label  (за string промени)
6. Device test на реално Android (landscape tablet/phone)
```

### Бързи entry points по задача

| Задача | Започни от |
|---|---|
| Превод / текст | `res/values/strings.xml` |
| Промяна на train UI | `res/layout/user_train_control_item_layout.xml` + `TrainFragment.smali` |
| Login без cloud | `LoginFragment.smali` + `ApiMgr.loginUrl` |
| BLE scan/connect | `train/ble/BleDeviceManager.smali` |
| EMS команди | `ble/ProtocolController.smali` |
| Език picker | `SettingFragment.smali` + `utils/LanguageUtils.smali` |
| OTA update URL | `ApiMgr.checkUpdateAppUrl` |

---

## 8. Зависимости и toolchain

| Инструмент | Версия | Локация |
|---|---|---|
| apktool | 2.10.0 | `/tmp/apktool.jar` (или `APKTOOL_JAR`) |
| Android build-tools | 30.0.3 | `$ANDROID_HOME/build-tools/30.0.3` |
| Platform | android-30 | `$ANDROID_HOME/platforms/android-30/android.jar` |
| Java | 8 target за patches | OpenJDK 21 runtime OK |
| dex-tools | v2.4 | `/tmp/dex-tools-v2.4` (за build-patches.sh) |

---

## 9. Известни ограничения

1. **Apktool recompile ≠ vendor binary** — виж `CHANGES.md`
2. **Няма Android emulator** в cloud agent средата — runtime тест само на устройство
3. **Encrypted assets** — `login_user_data.json` е obfuscated/encrypted
4. **Multi-dex** — app кодът е в `classes2.dex`; при patch merge внимавай да не презапишеш libs
5. **Landscape only** — UI не е оптимизиран за portrait

---

## 10. Свързани файлове

| Файл | Описание |
|---|---|
| [`xems.md`](xems.md) | UX/UI описание на всички екрани |
| [`CHANGES.md`](CHANGES.md) | Build рискове и история |
| [`build-apk.sh`](build-apk.sh) | Apktool build |
| [`build-original-apk.sh`](build-original-apk.sh) | Faithful repack |
| [`build-patches.sh`](build-patches.sh) | Java patch pipeline |
