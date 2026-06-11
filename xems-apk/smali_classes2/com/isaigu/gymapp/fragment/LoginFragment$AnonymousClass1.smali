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
    .line 87
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d00ee

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 173
    :goto_26
    return-void

    .line 98
    :cond_27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_26

    .line 103
    :cond_3f
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d007d

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_26

    .line 103
    :cond_52
    move-object v4, v1

    const/16 v1, 0x67

    invoke-static {v1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 105
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 107
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_login_user"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 108
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 109
    const-string v0, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 111
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 116
    :goto_a6
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$1;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v4, 0x640

    invoke-virtual {v1, v2, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    goto/16 :goto_26

    .line 113
    :cond_b8
    new-instance v0, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    goto :goto_a6

    .line 125
    :cond_be
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 129
    :cond_d7
    new-instance v1, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 130
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 131
    invoke-static {v4}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 133
    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;

    invoke-direct {v2, p0, v0, v4}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_26
.end method
