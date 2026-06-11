.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 196
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->startScan()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    .line 229
    :cond_1
    return-void
.end method
