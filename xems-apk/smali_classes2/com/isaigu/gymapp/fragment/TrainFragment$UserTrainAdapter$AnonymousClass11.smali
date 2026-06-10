.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass11"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11$AnonymousClass1;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 3

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    .line 1520
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1521
    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1525
    new-instance v0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 1526
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1527
    const-string v2, "name"

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1529
    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11$AnonymousClass1;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11$AnonymousClass1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 1530
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 1531
    return-void
.end method
