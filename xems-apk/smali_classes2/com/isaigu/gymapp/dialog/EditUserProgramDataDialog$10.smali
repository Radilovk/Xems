.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserProgramDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 482
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # invokes: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->preCheck()Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2500(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z

    move-result v0

    .line 486
    .local v0, "check":Z
    if-nez v0, :cond_9

    .line 487
    return-void

    .line 489
    :cond_9
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->multiEdit:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2600(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 490
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 491
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4b

    .line 494
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->people:[Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2800(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 498
    .end local v2    # "i":I
    :cond_4b
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V

    .line 499
    .end local v1    # "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_94

    .line 501
    :cond_5b
    new-instance v1, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 502
    .local v1, "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 503
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 504
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "name"

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setArguments(Landroid/os/Bundle;)V

    .line 507
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_83
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 633
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_95

    .line 638
    .end local v0    # "check":Z
    .end local v1    # "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    :cond_94
    :goto_94
    goto :goto_ab

    .line 635
    :catch_95
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v3, 0x7f0d00c7

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ab
    return-void
.end method
