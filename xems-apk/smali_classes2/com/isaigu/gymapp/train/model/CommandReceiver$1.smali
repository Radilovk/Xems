.class Lcom/isaigu/gymapp/train/model/CommandReceiver$1;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/CommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 40
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    # getter for: Lcom/isaigu/gymapp/train/model/CommandReceiver;->closed:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->access$000(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    return-void

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    # getter for: Lcom/isaigu/gymapp/train/model/CommandReceiver;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->access$100(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Lcom/isaigu/gymapp/train/model/CommandSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendBattery()V

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    # getter for: Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->access$300(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    # getter for: Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->access$200(Lcom/isaigu/gymapp/train/model/CommandReceiver;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method
