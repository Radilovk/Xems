.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass2"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final val$position:I

.field final val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 5

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1031
    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1032
    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$position:I

    .line 1033
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1038
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 1039
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1045
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-gtz v1, :cond_8a

    .line 1046
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 1047
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1053
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$position:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1054
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 1056
    if-eqz v0, :cond_74

    .line 1057
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1058
    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 1202
    :cond_74
    :goto_74
    return-void

    .line 1082
    :cond_75
    const-string v1, "file_name_offline_train_record_data"

    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1083
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    const-string v0, "file_name_offline_train_record_data"

    const-class v2, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_74

    .line 1089
    :cond_8a
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v1, :cond_a9

    .line 1090
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1091
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$4;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_74

    .line 1147
    :cond_a9
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1148
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_74
.end method
