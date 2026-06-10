XEMS — Подробно описание на UX/UI, интерфейс, функции и контроли
🏗️ Обща структура на навигацията
Приложението използва Bottom Navigation Bar с 5 таба (ll_tab1 → ll_tab5), управлявани от MainActivity. При стартиране има Splash екран с версия (напр. V 1.0.5) и логото на приложението.

5-те главни таба:

#	Таб	Fragment	Описание
1	🏋️ Train	TrainFragment	Управление на активни тренировки
2	👥 Users	UserFragment	Списък с клиенти
3	🏠 Main	MainFragment	Начален/обобщен екран
4	📹 Video	VideoListFragment	Обучителни видеа
5	⚙️ Settings	SettingFragment	Настройки
📱 Екрани
🔑 LoginFragment — Вход
Полета: потребителско име, парола
Контроли: CheckBox „Запомни паролата", бутон Вход
Валидация: Wrong user name or password
Вход без верификационен код (само username + password)
🚀 StartFragment — Стартов екран
Показва се след успешен логин
Бутони за преминаване към основното приложение
👥 UserFragment — Управление на клиенти
До 6 клиента едновременно. Всеки клиент има карта (user_item_layout) с:

Снимка (от камера или галерия)
Собствено потребителско ниво
Дата: 09-12-2018
Тегло: 75kg, Ръст: 173cm
Активна тренировъчна програма: 20min - 4/3s - 73Hz
Тип: Personal Training
Добавяне на клиент (add_user_layout):

Полета: Потребителско ниво/ID, Тегло, Ръст, Пол, Рожден ден, Телефон, Email, Адрес, Град
Hint текстове: pleaseid, pleaseweight, pleaseheight, pleaseinputname, pleasebirthday, pleasephone, pleaseemail, pleaseaddress, pleasecity
Снимка: бутон „Направи снимка" (pleaseTakepicture)
Checkbox за протокол
🏋️ TrainFragment — Тренировъчен контрол
Централният работен екран. Показва списък с активни потребители и за всеки:

user_train_control_item_layout — контролна карта за 1 клиент:

WaveBallProgress — анимиран индикатор на интензивност
BatterView — ниво на батерията на устройството
Таймер: 20:00 (обратно броене на тренировката)
Стойности: 35mA (ток), 37ml (ниво на хидратация или ml?)
AmountView — цифров контрол с +/- за регулиране на интензивност
Бутон за Старт/Стоп, Бутони за редактиране
EditParameterDialog — диалог за редактиране на параметри:

Поле за честота Hz
Поле за продължителност min. / sec.
AmountView компонент
NewTrainFragment — създаване на нова тренировка:

Идентичен layout с TrainFragment
SwipeMenuRecyclerView списък с тренировъчни елементи
📋 Тренировъчни програми
user_device_program_connect_layout — свързване клиент↔устройство↔програма:

Поле за търсене/избор на програма
Списък с налични устройства и програми
Пример: 20Min - 4/3s - 73Hz
program_data_item_layout / device_item_layout:

Показва параметри: 20Min - 4/3s - 73Hz (продължителност, импулс, честота)
program_plan_dialog_view — план на програмата:

SwipeMenuRecyclerView с plan items
Всяка стъпка: час 9:30, описание
save_program_dialog — запазване на програма:

EditText за наименование + потвърждение
single_parameter_picker_dialog / three_parameter_picker_dialog:

Wheel picker за избор на 1 или 3 параметъра (продължителност, импулс, честота)
📅 CalendarFragment — Календар
Персонализиран CustomCalendar компонент
Визуализация по дни/седмици/месеци
Маркиране на тренировъчни дни с mSelectBg, mCurrentBg
Цветови индикатори: завършени, незавършени, предстоящи тренировки
🎬 VideoListFragment — Видео
XRecyclerView с видео карти (video_list_item)
Всяка карта: thumbnail + заглавие
Вграден плейър JZVideoPlayerExtend с:
Play/Pause, Backward/Forward бутони
Volume контрол
Fullscreen режим
Brightness контрол
Progress bar
⚙️ SettingFragment — Настройки
Избор на език (8 езика с флагове): 🇨🇳 Chinese, 🇬🇧 English, 🇪🇸 Spanish, 🇮🇹 Italian, 🇫🇷 French, 🇩🇪 German, 🇷🇺 Russian, 🇹🇷 Turkish, 🇧🇷 Portuguese, 🇵🇱 Polish
RangeSeekBar — регулиране на диапазон
SwitchButton — on/off настройки
Версия на приложението и бутон за обновяване
Изход от акаунта (Sign Out)
Информация: 1.0.24 / 2018-11-20 10:08:00
🔵 Bluetooth / BLE контроли
Свързване с устройство:

Сканиране → избор от списък → свързване
Статуси: Connected to GATT server. / Disconnected from GATT server.
Индикатор на сигнал (signal.png, signal2.png)
Индикатор на батерия (5 нива: 10%, 30%, 50%, 70%, 90%, 100%)
Disconnect типове: по инициатива на потребителя vs. GATT грешка
BLE Протокол — команди към EMS устройство:

request_set_mode_10_part_parameter — задаване на интензивност за 10 части на тялото
request_get_mode_10_part_parameter — четене на текущи параметри
set_mode_other_parameter — други параметри на режима
3 основни режима: mode_1, mode_2, mode_3
10 части на тялото (EMS канали):

BG ресурс	Анатомична зона
xiong / xiongbu	Гърди
fubu	Корем
bei / beibu	Гръб
yaobu	Кръст
bibu	Седалище
shoubi	Ръка/Рамо
tui / tuiquji	Бедро
xiaotui	Подбедрица
houxie / houxiefangji	Задна страна
🎛️ Персонализирани UI компоненти
Компонент	Функция
WaveBallProgress	Анимиран индикатор (вълна в топка) за интензивност
CircularProgressView	Кръгов прогрес
AmountView / AmountView2	+/- цифров регулатор за ток (mA)
RangeSeekBar / VerticalRangeSeekBar	Двойна плъзгачка за диапазон
SeekBar / VerticalColorSeekBar	Вертикален цветен плъзгач
SwitchButton	iOS-стил превключвател
CustomCalendar	Персонализиран календар
MyButton	Бутон с защита от двойно кликване
LineEditText	EditText с долна линия
ShapeCornerBgView	Заоблен фон за карти
LoadingDialog / StatusLoadingDialog	Диалог за зареждане
MessageDialog	Стандартен информационен диалог
JZVideoPlayer	Видео плейър
📊 Записи и история
TrainRecord (история на тренировките):

getTrainRecordByUserId/ — зарежда история по потребител
user_train_record_dialog_layout — диалог с RecyclerView с минали тренировки
train_record_item_layout / trainrecord.png — карта на запис
🌍 Многоезичност
Приложението е напълно преведено на 10 езика (потвърдено от strings в DEX и флагови изображения). Забелязани са текстове на английски, италиански, испански, португалски, турски, полски.

Обобщение: XEMS е таблетно/телефонно приложение за EMS фитнес студиа. Треньорът управлява до 6 клиента едновременно, свързва всеки към Bluetooth EMS устройство, задава тренировъчна програма с параметри (продължителност, честота на импулс, интензивност за 10 анатомични зони), следи прогрес в реално време чрез WaveBallProgress и таймер, и записва резултатите в cloud.