.class Lcom/isaigu/gymapp/train/TrainItemManager$5;
.super Ljava/lang/Object;
.source "TrainItemManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainItemManager;->closeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainItemManager;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$5;->this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 83
    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    .line 84
    return-void
.end method
