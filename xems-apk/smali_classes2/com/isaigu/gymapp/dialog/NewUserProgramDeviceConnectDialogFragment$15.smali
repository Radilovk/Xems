.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

.field final synthetic val$bundle:Lcom/isaigu/gymapp/message/DataBundle;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 703
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;->val$bundle:Lcom/isaigu/gymapp/message/DataBundle;

    # invokes: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$1000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 706
    return-void
.end method
