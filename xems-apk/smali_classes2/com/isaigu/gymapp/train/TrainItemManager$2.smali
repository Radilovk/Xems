.class Lcom/isaigu/gymapp/train/TrainItemManager$2;
.super Ljava/lang/Object;
.source "TrainItemManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainItemManager;->disConnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager$2;->this$0:Lcom/isaigu/gymapp/train/TrainItemManager;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainItemManager$2;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager$2;->val$mac:Ljava/lang/String;

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 51
    return v0
.end method
