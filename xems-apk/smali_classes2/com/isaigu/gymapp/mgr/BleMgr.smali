.class public Lcom/isaigu/gymapp/mgr/BleMgr;
.super Ljava/lang/Object;
.source "BleMgr.java"


# static fields
.field private static controller:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController()Lcom/isaigu/gymapp/ble/AndroidBleController;
    .registers 1

    .line 16
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-nez v0, :cond_7

    .line 17
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->initBle()V

    .line 19
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    return-object v0
.end method

.method public static initBle()V
    .registers 4

    .line 22
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_5

    .line 23
    return-void

    .line 25
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 26
    new-instance v1, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    const-string v2, "NBee"

    const-string v3, "fff0"

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    new-instance v1, Lcom/isaigu/gymapp/mgr/BleMgr$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/mgr/BleMgr$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->init()Z

    .line 83
    return-void
.end method

.method public static onPause()V
    .registers 1

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->isBleScanning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 99
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 101
    :cond_14
    return-void
.end method

.method public static onResume()V
    .registers 2

    .line 104
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_11

    .line 105
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->getBleState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->requestOpenBle()V

    .line 107
    return-void

    .line 110
    :cond_11
    return-void
.end method

.method public static unInitBle()V
    .registers 2

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    if-eqz v0, :cond_14

    .line 87
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectAll()V

    .line 88
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->onDestroy()V

    .line 90
    sput-object v1, Lcom/isaigu/gymapp/mgr/BleMgr;->controller:Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 92
    :cond_14
    return-void
.end method
