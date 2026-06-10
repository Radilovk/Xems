.class Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # getter for: Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
