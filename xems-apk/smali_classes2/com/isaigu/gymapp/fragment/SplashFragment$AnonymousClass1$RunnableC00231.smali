.class Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunnableC00231"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const v2, 0x7f0900a4

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/UserData;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_invalidate_autologin

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_invalidate_autologin

    .line 93
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 97
    const-string v0, "file_name_login_user"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_cf

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 99
    const-string v0, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 106
    :goto_63
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v4, 0x640

    invoke-virtual {v1, v2, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 161
    :goto_75
    return-void

    .line 103
    :cond_76
    new-instance v0, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    goto :goto_63

    .line 115
    :cond_7c
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_75

    .line 119
    :cond_92
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 120
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 123
    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$2;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_75

    .line 160
    :cond_invalidate_autologin
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    goto :cond_cf

    :cond_cf
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_75
.end method
