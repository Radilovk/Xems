.class Lcom/isaigu/gymapp/fragment/TrainFragment$16$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$16;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$16;)V
    .registers 2
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    .line 561
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$16$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$16$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->clearAllPartSelect()V

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$16$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->clearAllMASelect()V

    .line 565
    return-void
.end method
