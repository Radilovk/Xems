.class Lcom/isaigu/gymapp/train/model/TrainItem$4;
.super Ljava/lang/Object;
.source "TrainItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;->close()V
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
    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$4;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$4;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->lambda$close$1$TrainItem()V

    .line 178
    return-void
.end method
