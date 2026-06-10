.class Lcom/isaigu/gymapp/fragment/TrainFragment$3;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field final synthetic val$fi:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;I)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->val$fi:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->clearAllMASelect()V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->val$fi:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleColumnOperation(I)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    .line 185
    return-void
.end method
