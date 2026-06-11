.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    .line 507
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 511
    return-void

    .line 513
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "update":Z
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 517
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object p1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 518
    const/4 v0, 0x0

    .line 520
    :cond_5d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b

    .line 521
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 522
    const/4 v0, 0x1

    .line 523
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 524
    goto :goto_9b

    .line 520
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 527
    .end local v1    # "i":I
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 528
    if-eqz v0, :cond_bd

    .line 529
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_cd

    .line 559
    :cond_bd
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainData(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 589
    .end local v0    # "update":Z
    :goto_cd
    goto/16 :goto_204

    .line 590
    :cond_cf
    const/4 v0, 0x1

    .line 591
    .restart local v0    # "update":Z
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 592
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object p1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 593
    const/4 v0, 0x0

    .line 595
    :cond_eb
    if-eqz v0, :cond_143

    .line 596
    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v2, "file_name_offline_update_train_program_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 597
    .local v1, "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v3, 0x0

    .line 598
    .local v3, "contain":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_130

    .line 599
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v5, :cond_12d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v6, v6, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 600
    const/4 v3, 0x1

    .line 601
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_12d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    .line 604
    .end local v4    # "i":I
    :cond_130
    if-nez v3, :cond_13d

    .line 605
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_13d
    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v2, v4, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 608
    .end local v1    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v3    # "contain":Z
    goto :goto_198

    .line 609
    :cond_143
    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v2, "file_name_offline_train_program_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 610
    .restart local v1    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    const/4 v3, 0x0

    .line 611
    .restart local v3    # "contain":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_14f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_186

    .line 612
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v5, :cond_183

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v6, v6, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v6}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_183

    .line 613
    const/4 v3, 0x1

    .line 614
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_183
    add-int/lit8 v4, v4, 0x1

    goto :goto_14f

    .line 617
    .end local v4    # "i":I
    :cond_186
    if-nez v3, :cond_193

    .line 618
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_193
    const-class v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v2, v4, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 622
    .end local v1    # "offlineData":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    .end local v3    # "contain":Z
    :goto_198
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 623
    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v3, "file_name_train_data"

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 624
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v3, 0x7f0d00c8

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v1

    if-eqz v1, :cond_1e8

    .line 626
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->saveProgramListener:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2700(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V

    .line 628
    :cond_1e8
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->val$dialog:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 629
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$10;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 631
    .end local v0    # "update":Z
    :goto_204
    return-void
.end method
