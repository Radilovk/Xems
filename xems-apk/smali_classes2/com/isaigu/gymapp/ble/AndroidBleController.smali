.class public Lcom/isaigu/gymapp/ble/AndroidBleController;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Lcom/isaigu/gymapp/ble/BleInterface;


# static fields
.field public static final ACTION_DATA_AVAILABLE:I = 0x68

.field public static final ACTION_DEVICE_DOES_NOT_SUPPORT_UART:I = 0x6a

.field public static final ACTION_GATT_CONNECTED:I = 0x65

.field public static final ACTION_GATT_DISCONNECTED:I = 0x66

.field public static final ACTION_GATT_READ_RSSI:I = 0x69

.field public static final ACTION_GATT_SERVICES_DISCOVERED:I = 0x67

.field public static final ANDROID_CONTROL_UUID:Ljava/util/UUID;

.field public static final ANDROID_NOTIFY_UUID:Ljava/util/UUID;

.field public static final ANDROID_SERVICE_UUID:Ljava/util/UUID;

.field private static final NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

.field public static final REQUEST_ENABLE_BT:I = 0x2


# instance fields
.field private activity:Landroid/app/Activity;

.field private bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

.field private filterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mDisConnectedGattMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z

.field private scanDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private uuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

    .line 34
    const-string v0, "0000fff0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    .line 36
    const-string v0, "0000fff2-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_CONTROL_UUID:Ljava/util/UUID;

    .line 38
    const-string v0, "0000fff1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 67
    new-instance v0, Lcom/isaigu/gymapp/ble/AndroidBleController$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$1;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$2;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 178
    new-instance v0, Lcom/isaigu/gymapp/ble/AndroidBleController$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$3;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 92
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    .line 97
    sget-object v1, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    const-string v2, "fff0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    sget-object v1, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_CONTROL_UUID:Ljava/util/UUID;

    const-string v2, "fff2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    sget-object v1, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    const-string v2, "fff1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 30
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->close(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .line 30
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->enableTXNotification(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .line 30
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 522
    if-nez p1, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    const-string v0, "event ==== mBluetoothGatt closed"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 527
    const/4 p1, 0x0

    .line 528
    return-void
.end method

.method private enableTXNotification(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 532
    if-nez p1, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 536
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    .line 537
    const-string v1, "service not found!"

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 539
    return-void

    .line 541
    :cond_1
    sget-object v1, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_NOTIFY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 542
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_2

    .line 543
    const-string v2, "Tx charateristic not found!"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 545
    return-void

    .line 547
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 549
    sget-object v2, Lcom/isaigu/gymapp/ble/AndroidBleController;->NOTIFICATIONDISCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 550
    .local v2, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v2, :cond_3

    .line 551
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 552
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 554
    :cond_3
    return-void
.end method


# virtual methods
.method public addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V
    .locals 3
    .param p1, "filterbean"    # Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .line 769
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->serviceUUID:Ljava/lang/String;

    .line 773
    const/4 v0, 0x1

    .line 774
    .local v0, "accept":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 775
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    invoke-virtual {v2, p1}, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    const/4 v0, 0x0

    .line 777
    goto :goto_1

    .line 774
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 781
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_3
    return-void

    .line 770
    .end local v0    # "accept":Z
    :cond_4
    :goto_2
    return-void
.end method

.method public connectByAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 386
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event === Device not found.  Unable to connect.   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 388
    return v1

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v2, v1, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 394
    const-string v1, "event === Trying to create a new connection."

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x1

    return v1
.end method

.method public disconnectAll()V
    .locals 5

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 501
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 502
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 506
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 508
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 509
    .local v2, "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event disconnectAll =====    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    const/4 v4, 0x2

    invoke-interface {v3, v2, v4}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 513
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    .end local v2    # "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mDisConnectedGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public disconnectByAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 479
    return v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 482
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 486
    .local v0, "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event disconnect ===== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v1, :cond_1

    .line 489
    const/4 v3, 0x2

    invoke-interface {v1, v0, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V

    .line 491
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 493
    .end local v0    # "value":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_2
    goto :goto_0

    .line 494
    :cond_3
    return v1
.end method

.method public getBleState()I
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x2

    return v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    const/4 v0, 0x5

    return v0

    .line 725
    :cond_2
    :goto_0
    const/4 v0, 0x4

    return v0
.end method

.method public getConnectState(Ljava/lang/String;)I
    .locals 5
    .param p1, "uniqueUUID"    # Ljava/lang/String;

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 603
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 605
    goto :goto_1

    .line 607
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    goto :goto_0

    .line 608
    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 609
    return v1

    .line 611
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 612
    .local v2, "state":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 613
    return v3

    .line 614
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 615
    return v3

    .line 617
    :cond_4
    return v1
.end method

.method public getRoughlyDistance()I
    .locals 1

    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public getmGattMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 322
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_1

    .line 324
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_1

    .line 328
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 331
    :cond_1
    :goto_0
    return-void
.end method

.method public init()Z
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 577
    :cond_0
    return v2

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 581
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 583
    if-nez v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_2

    .line 585
    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBleStateChange(I)V

    .line 587
    :cond_2
    return v2

    .line 590
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 591
    const-string v0, "onClick - BT not enabled yet"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    .line 596
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isBleScanning()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 760
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 763
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_1
    goto :goto_0

    .line 764
    :cond_2
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->bleStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 285
    return-void
.end method

.method public read(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 675
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->read(Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    const/4 v1, 0x1

    return v1

    .line 678
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 685
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 687
    goto :goto_1

    .line 689
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    goto :goto_0

    .line 690
    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 691
    return v1

    .line 693
    :cond_2
    sget-object v2, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 694
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_3

    .line 695
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 696
    return v1

    .line 698
    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 699
    .local v3, "readCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v3, :cond_4

    .line 700
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 701
    return v1

    .line 703
    :cond_4
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    return v1
.end method

.method public readRSSI(Ljava/lang/String;)V
    .locals 3
    .param p1, "uniqueUUID"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 559
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 561
    goto :goto_1

    .line 563
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    goto :goto_0

    .line 564
    :cond_1
    :goto_1
    return-void
.end method

.method public requestCloseBle()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$5;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method public requestOpenBle()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/ble/AndroidBleController$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ble/AndroidBleController$4;-><init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 742
    return-void
.end method

.method public setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    .line 708
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    .line 709
    return-void
.end method

.method public startScan()Z
    .locals 1

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->startScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "result":Z
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->scanDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 351
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 352
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    if-nez v2, :cond_1

    .line 354
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 355
    if-nez p1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    goto :goto_0

    .line 358
    :cond_0
    new-array v2, v2, [Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v1, :cond_1

    .line 361
    invoke-interface {v1}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onBeginScan()V

    .line 364
    :cond_1
    return v0
.end method

.method public stopScan()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 375
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mScanning:Z

    .line 376
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->delegate:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onStopScan()V

    .line 381
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 633
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 635
    goto :goto_1

    .line 637
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    goto :goto_0

    .line 638
    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 639
    return v1

    .line 641
    :cond_2
    sget-object v2, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 642
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_3

    .line 643
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 644
    return v1

    .line 646
    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->uuidMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 648
    .local v3, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v3, :cond_4

    .line 649
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 650
    return v1

    .line 652
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 653
    invoke-virtual {v3, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 654
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    .line 655
    .local v4, "status":Z
    const/4 v5, 0x0

    .line 656
    .local v5, "time":I
    :goto_2
    if-nez v4, :cond_5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    .line 657
    add-int/lit8 v5, v5, 0x1

    .line 658
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    goto :goto_2

    .line 668
    :cond_5
    const-string v6, "write success"

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 669
    return v1
.end method

.method public write(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 622
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mGattMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->uniqueUUID:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 624
    const/4 v1, 0x1

    return v1

    .line 626
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothGatt;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 344
    return-void

    .line 340
    :cond_1
    :goto_0
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 341
    return-void
.end method
