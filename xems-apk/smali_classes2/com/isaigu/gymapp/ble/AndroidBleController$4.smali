.class Lcom/isaigu/gymapp/ble/AndroidBleController$4;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ble/AndroidBleController;->requestOpenBle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/ble/AndroidBleController;

    .line 732
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    # getter for: Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_11

    .line 735
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$702(Lcom/isaigu/gymapp/ble/AndroidBleController;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 737
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    # getter for: Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    # getter for: Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$4;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    # getter for: Lcom/isaigu/gymapp/ble/AndroidBleController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->access$700(Lcom/isaigu/gymapp/ble/AndroidBleController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 740
    :cond_2e
    return-void
.end method
