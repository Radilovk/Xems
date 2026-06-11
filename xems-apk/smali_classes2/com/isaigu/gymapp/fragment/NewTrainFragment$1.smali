.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;
.super Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.source "NewTrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/NewTrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    const/4 v1, 0x1

    # setter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_25
    return v2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 73
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 69
    :cond_25
    return-void
.end method
