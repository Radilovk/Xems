.class Lcom/isaigu/gymapp/train/TrainItemManager$7;
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

.field final synthetic val$anyMaSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$7;->this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainItemManager$7;->val$anyMaSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p3, p0, Lcom/isaigu/gymapp/train/TrainItemManager$7;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager$7;->val$anyMaSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$7;->val$value:I

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 103
    return-void
.end method
