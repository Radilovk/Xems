.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$fi:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;II)V
    .registers 4

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->val$position:I

    iput p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->val$fi:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->clearAllMASelect()V

    .line 1408
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->val$position:I

    iget v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->val$fi:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleRowAndIndexOperation(II)V

    .line 1409
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    .line 1410
    return-void
.end method
