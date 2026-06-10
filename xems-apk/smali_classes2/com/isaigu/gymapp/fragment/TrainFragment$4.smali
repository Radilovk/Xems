.class Lcom/isaigu/gymapp/fragment/TrainFragment$4;
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


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getDecreaseStepTenths()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStrenthChange(I)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    .line 194
    return-void
.end method
