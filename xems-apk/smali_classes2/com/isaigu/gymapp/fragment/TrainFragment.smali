.class public Lcom/isaigu/gymapp/fragment/TrainFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    }
.end annotation


# instance fields
.field private allAdd:Lcom/isaigu/gymapp/widget/MyButton;

.field private allMinus:Lcom/isaigu/gymapp/widget/MyButton;

.field private allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

.field private allStop:Lcom/isaigu/gymapp/widget/MyButton;

.field private allUsers:Lcom/isaigu/gymapp/widget/MyButton;

.field private batteryGetTimer:Ljava/util/Timer;

.field private buwei:[Landroid/widget/LinearLayout;

.field private clearSelectTimer:Ljava/util/Timer;

.field private leftLayout:Landroid/widget/LinearLayout;

.field private logoImage:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private reconnectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectTimer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private rightLayout:Landroid/widget/LinearLayout;

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private trainRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            ">;"
        }
    .end annotation
.end field

.field private trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 98
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private changeLayoutPosition()V
    .registers 3

    .prologue
    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    if-eqz v0, :cond_14

    .line 332
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 333
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 338
    :goto_13
    return-void

    .line 335
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 336
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_13
.end method

.method private declared-synchronized handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 7

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 394
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 395
    const-string v0, "\u8fde\u63a5\u754c\u9762\u6253\u5f00\u7740\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_82

    .line 421
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 398
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 399
    if-eqz v0, :cond_17

    .line 400
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    .line 401
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    if-eqz v0, :cond_47

    iget-object v1, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 403
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 405
    :cond_47
    const/4 v1, 0x0

    move v2, v1

    .line 407
    :goto_49
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7c

    .line 408
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 409
    if-eqz v1, :cond_71

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v3, :cond_71

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 410
    :cond_71
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 415
    goto :goto_49

    .line 412
    :cond_75
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    .line 419
    :cond_7c
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_81
    .catchall {:try_start_19 .. :try_end_81} :catchall_82

    goto :goto_17

    .line 393
    :catchall_82
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 342
    if-nez v0, :cond_e

    .line 343
    const-string v0, "\u4f20\u9012\u8fc7\u6765 wrapper\u4e3a\u7a7a==========================="

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 362
    :cond_d
    :goto_d
    return-void

    .line 346
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    move-result v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrainingUser   sucess ============================ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   \u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 348
    if-eqz v1, :cond_d

    .line 349
    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 355
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method private handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 5

    .prologue
    .line 497
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 498
    const-string v1, "address"

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$14;

    invoke-direct {v2, p0, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/lang/String;[B)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 505
    return-void
.end method

.method private handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 8

    .prologue
    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 488
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_a

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getTrainUser(J)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_a

    .line 493
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 494
    return-void
.end method

.method private initListener()V
    .registers 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    .line 177
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 179
    aget-object v1, v1, v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_1

    .line 189
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    .line 141
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 142
    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    .line 143
    const/4 v2, 0x0

    const v0, 0x7f090057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 144
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    const v0, 0x7f09005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 146
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    const v0, 0x7f09005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 148
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    const v0, 0x7f09005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 149
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    const v0, 0x7f09005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x7

    const v0, 0x7f09005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/16 v2, 0x9

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 153
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    .line 154
    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    .line 155
    const v0, 0x7f09003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    .line 156
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    .line 157
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    .line 158
    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 160
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 162
    :cond_f7
    const v0, 0x7f0901b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 163
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 168
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V

    .line 169
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 171
    return-void
.end method

.method private stopGetBatteryTimer()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 390
    return-void
.end method


# virtual methods
.method public declared-synchronized handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 425
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 426
    const-string v0, "\u63a7\u5236\u754c\u9762\u6ca1\u6253\u5f00\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u65ad\u5f00"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_a2

    .line 483
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 429
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907\u65ad\u5f00\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 431
    if-eqz v0, :cond_13

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v5

    .line 434
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    move v4, v2

    .line 438
    :goto_4b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_a5

    move v1, v2

    .line 450
    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 451
    if-eqz v1, :cond_13

    .line 452
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 453
    :goto_82
    const/4 v2, 0x3

    if-ge v1, v2, :cond_cc

    .line 454
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V
    :try_end_a0
    .catchall {:try_start_15 .. :try_end_a0} :catchall_a2

    goto/16 :goto_13

    .line 425
    :catchall_a2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 441
    :cond_a5
    :try_start_a5
    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 442
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4b

    .line 444
    :cond_b9
    const/4 v3, 0x1

    .line 445
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 446
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    move v1, v3

    .line 447
    goto :goto_52

    :cond_ca
    move v1, v2

    .line 452
    goto :goto_82

    .line 466
    :cond_cc
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v2, 0x1f40

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v2

    .line 477
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 478
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_a2

    goto/16 :goto_13
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 305
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 306
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    .line 328
    :cond_a
    :goto_a
    return-void

    .line 309
    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 310
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_a

    .line 313
    :cond_12
    const/16 v1, 0x6b

    if-ne v0, v1, :cond_1c

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    goto :goto_a

    .line 317
    :cond_1c
    const/16 v1, 0x65

    if-ne v0, v1, :cond_24

    .line 318
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_a

    .line 321
    :cond_24
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2c

    .line 322
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_a

    .line 323
    :cond_2c
    const/16 v1, 0x3f0

    if-ne v0, v1, :cond_34

    .line 324
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_a

    .line 325
    :cond_34
    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_a

    .line 326
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 114
    const v0, 0x7f0900dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f090155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    .line 116
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V

    .line 118
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 119
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 120
    const/16 v0, 0x66

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 121
    const/16 v0, 0x65

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 122
    const/16 v0, 0x3f0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 123
    const/16 v0, 0x3f1

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 124
    const/16 v0, 0x6b

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 125
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    .line 1905
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isSomeoneStart()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->updateAllStartPauseUI(Z)V

    .line 1906
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroy()V

    .line 1907
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 299
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 300
    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 4

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 131
    if-nez p1, :cond_28

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 138
    :cond_28
    :goto_28
    return-void

    .line 135
    :cond_29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 293
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    .line 294
    return-void
.end method

.method public startClearSelectedTimer()V
    .registers 5

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    .line 516
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 528
    return-void
.end method

.method public startGetBatteryTimer()V
    .registers 7

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 366
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 385
    return-void
.end method

.method public stopClearSelectedTimer()V
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 511
    return-void
.end method

.method public updateAllStartPauseUI(Z)V
    .registers 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    if-eqz p1, :cond_b

    const v0, 0x7f0c006e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 288
    return-void

    .line 287
    :cond_b
    const v0, 0x7f0c0069

    goto :goto_7
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 108
    const v0, 0x7f0b006e

    return v0
.end method
