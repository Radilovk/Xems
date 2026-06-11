.class Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d00ee

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 168
    :goto_34
    return-void

    .line 88
    :cond_35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_34

    .line 92
    :cond_4e
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 94
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 95
    :cond_72
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d007d

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_34

    .line 98
    :cond_85
    const/16 v2, 0x67

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 99
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_116

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_login_user"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 104
    const-string v0, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 106
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 111
    :goto_e5
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v4, 0x640

    invoke-virtual {v1, v2, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    goto/16 :goto_34

    .line 108
    :cond_f7
    new-instance v0, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    goto :goto_e5

    .line 120
    :cond_fd
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 124
    :cond_116
    new-instance v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 125
    iput-object v0, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 128
    new-instance v3, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_34
.end method
