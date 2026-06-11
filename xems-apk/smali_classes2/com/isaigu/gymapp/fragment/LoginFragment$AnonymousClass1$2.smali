.class Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->onNoDoubleClick(Landroid/view/View;)V
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
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 128
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_aa

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_aa

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 134
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->appLogoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->appLogoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 137
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->val$username:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->val$pwd:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->roleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    .line 141
    const-string v0, "file_name_login_user"

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 144
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->token:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->roleName:Ljava/lang/String;

    const-string v1, "ROLE_COACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 146
    sput-boolean v4, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 147
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 152
    :goto_93
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;Lcom/isaigu/gymapp/BaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :goto_a3
    return-void

    .line 149
    :cond_a4
    new-instance v0, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    goto :goto_93

    .line 161
    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 163
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    .line 165
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    goto :goto_a3
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 128
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
