.class Lcom/isaigu/gymapp/ble/AndroidBleController$2;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/AndroidBleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .line 111
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p3}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseFromBytes([B)Lcom/isaigu/gymapp/ble/ScanRecord;

    move-result-object v0

    .line 118
    .local v0, "record":Lcom/isaigu/gymapp/ble/ScanRecord;
    const/4 v1, 0x0

    .line 119
    .local v1, "serviceUUID":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v3

    const v4, 0xf0f1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 122
    .local v3, "manufacturerData":[B
    :goto_0
    nop

    .line 125
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 128
    :cond_2
    sget-object v4, Lcom/isaigu/gymapp/ble/AndroidBleController;->ANDROID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  ============scan before==================  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_5

    .line 136
    :cond_3
    const/4 v4, 0x0

    .line 137
    .local v4, "accept":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 138
    iget-object v7, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$200(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;

    .line 140
    .local v7, "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    iget-object v8, v7, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    if-eqz v8, :cond_4

    array-length v8, v3

    iget-object v9, v7, Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;->advertiseDataLength:Ljava/lang/Integer;

    .line 143
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_4

    goto :goto_2

    .line 137
    .end local v7    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 144
    .restart local v7    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 149
    .end local v6    # "i":I
    .end local v7    # "filterBean":Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;
    :cond_6
    if-nez v4, :cond_7

    .line 150
    return-void

    .line 153
    :cond_7
    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v6}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 154
    new-instance v6, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v2, v7, v8}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v6, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    iget-object v7, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v7, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 158
    iget-object v7, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v7}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v8}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v7, v8, p2, v1, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDiscovered(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===========scan after===================  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 162
    if-eqz v3, :cond_8

    array-length v7, v3

    if-lez v7, :cond_8

    .line 163
    const-string v7, "LOG: "

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 164
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v8, v3

    if-ge v7, v8, :cond_8

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 168
    .end local v7    # "i":I
    :cond_8
    const-string v5, ""

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/Logger;->logConsolet(Ljava/lang/String;)V

    .line 170
    .end local v6    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :cond_9
    goto :goto_4

    .line 171
    :cond_a
    iget-object v5, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v5}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 172
    iget-object v5, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v5}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$000(Lcom/isaigu/gymapp/ble/AndroidBleController;)Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$2;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {v6}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$100(Lcom/isaigu/gymapp/ble/AndroidBleController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    invoke-interface {v5, v6, p2, v1, v3}, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;->onDeviceDiscoveredUpdate(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V

    .line 175
    :cond_b
    :goto_4
    return-void

    .line 133
    .end local v4    # "accept":Z
    :cond_c
    :goto_5
    return-void

    .line 112
    .end local v0    # "record":Lcom/isaigu/gymapp/ble/ScanRecord;
    .end local v1    # "serviceUUID":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "manufacturerData":[B
    :cond_d
    :goto_6
    return-void
.end method
