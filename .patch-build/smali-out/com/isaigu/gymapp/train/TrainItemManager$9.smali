.class Lcom/isaigu/gymapp/train/TrainItemManager$9;
.super Ljava/lang/Object;
.source "TrainItemManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;
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
    .line 127
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$9;->this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 130
    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$notEmptyItems$8(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    return v0
.end method
