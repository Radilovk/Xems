.class Lcom/isaigu/gymapp/fragment/TrainFragment$13;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field final synthetic val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

.field final synthetic val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 471
    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$model:Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 474
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 475
    return-void
.end method
