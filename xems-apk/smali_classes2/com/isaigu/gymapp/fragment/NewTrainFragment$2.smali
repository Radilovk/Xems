.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/listener/OnTrainListListener;


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
    .line 75
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteButtonClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public onEmptyItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_10

    .line 80
    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 82
    :cond_10
    return-void
.end method

.method public onItemChange(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public onItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 87
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_1b
    return-void

    .line 87
    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method
