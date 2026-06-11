.class Lcom/isaigu/gymapp/train/model/TrainItem$1;
.super Ljava/lang/Object;
.source "TrainItem.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveBattery(I)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$1;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->lambda$new$0$TrainItem(I)V

    .line 36
    return-void
.end method
