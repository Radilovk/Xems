.class Lcom/isaigu/gymapp/train/TrainItemManager$8;
.super Ljava/lang/Object;
.source "TrainItemManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainItemManager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$8;->this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

    iput p2, p0, Lcom/isaigu/gymapp/train/TrainItemManager$8;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 109
    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager$8;->val$value:I

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(I)V

    .line 110
    return-void
.end method
