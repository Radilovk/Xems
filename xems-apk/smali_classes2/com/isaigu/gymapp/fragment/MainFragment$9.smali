.class Lcom/isaigu/gymapp/fragment/MainFragment$9;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/isaigu/gymapp/bean/TrainProgram;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/MainFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p1, :cond_27

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_27

    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 346
    const-string v0, "file_name_train_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 351
    :goto_21
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 352
    return-void

    .line 348
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    goto :goto_21
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 341
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/MainFragment$9;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
