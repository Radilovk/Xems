# XEMS — само дълбочина на импулсите по канал

## Единствената модификация

**Настройки → Per-channel impulse depth (μs)** — за всеки от 10-те канала може да се зададе ширина на импулса в μs. Стойност **0** = използва се глобалната стойност от програмата.

Стойностите се записват в `UserData.channelPulseWidthUs` и се прилагат при BLE командите чрез `ChannelPulseUtil` / `CommandUtil`.

## Всичко останало — оригинален XEMS-25

Възстановен е stock код от оригиналния APK (`classes2.dex` от първоначалния upload):

- Оригинален екран за настройки (езици, яркост, лого, часовник)
- Оригинален вход, тренировки, календар, BLE поток
- Без: BG/EN custom, alternate impulse, калибрация на ток, crash patches, branding, custom app name

## Сборка

```bash
DEX2JAR_DIR=/path/to/dex-tools-v2.4 ./build-patches.sh
./build-apk.sh
```

Изход: `xems-modified.apk` (version `1.0.0 - 240704`, app name `XEMS-25`)

## Инсталация

Деинсталирайте оригиналното приложение преди инсталация (различен подпис на модифицирания APK).
