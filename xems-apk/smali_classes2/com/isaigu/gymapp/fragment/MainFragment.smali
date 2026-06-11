.class public Lcom/isaigu/gymapp/fragment/MainFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

.field private fragment_now:Landroid/support/v4/app/Fragment;

.field frameLayout:Landroid/widget/FrameLayout;

.field final imageSelected:[I

.field final imageUnselect:[I

.field iv1:Landroid/widget/ImageView;

.field iv2:Landroid/widget/ImageView;

.field iv3:Landroid/widget/ImageView;

.field iv4:Landroid/widget/ImageView;

.field iv5:Landroid/widget/ImageView;

.field private iv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field li1:Landroid/widget/LinearLayout;

.field li2:Landroid/widget/LinearLayout;

.field li3:Landroid/widget/LinearLayout;

.field li4:Landroid/widget/LinearLayout;

.field li5:Landroid/widget/LinearLayout;

.field private ll_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

.field final title:[Ljava/lang/String;

.field trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;

.field tv5:Landroid/widget/TextView;

.field private tv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

.field videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 38
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    return-void

    .line 65
    nop

    :array_1c
    .array-data 4
        0x7f0c0060
        0x7f0c007a
        0x7f0c0064
        0x7f0c007d
        0x7f0c0061
    .end array-data

    .line 66
    :array_2a
    .array-data 4
        0x7f0c0078
        0x7f0c0079
        0x7f0c0052
        0x7f0c007c
        0x7f0c0053
    .end array-data
.end method

.method private ensureDataListsInitialized()V
    .registers 3

    .prologue
    .line 435
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_13

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 438
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_26

    .line 439
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 441
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v0, :cond_39

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 444
    :cond_39
    return-void
.end method

.method private initData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->ensureDataListsInitialized()V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const v1, 0x7f0d00e5

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f0d00d2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f0d00f0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3c

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    :cond_3c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v0, :cond_69

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 171
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 172
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_8c

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 175
    :cond_8c
    const-string v0, "file_name_offline_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    if-eqz v0, :cond_a7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a7

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_a7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_ca

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 183
    :cond_ca
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_register_protocol_data"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 220
    :cond_da
    :goto_da
    return-void

    .line 186
    :cond_db
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_f3

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_login_user"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 189
    :cond_f3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_da

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getCurrentProtocol(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 217
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddUser()V

    .line 218
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineDeleteTrainProgram()V

    .line 219
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainRecord()V

    goto :goto_da
.end method

.method private initOfflineAddTrainRecord()V
    .registers 3

    .prologue
    .line 363
    const-string v0, "file_name_offline_train_record_data"

    const-class v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 364
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 365
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 379
    :cond_1a
    return-void
.end method

.method private initOfflineAddUser()V
    .registers 6

    .prologue
    .line 223
    const-string v0, "file_name_offline_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_34

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    .line 229
    :cond_34
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->submitUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 241
    :goto_3c
    return-void

    .line 240
    :cond_3d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    goto :goto_3c
.end method

.method private initOfflineDeleteTrainProgram()V
    .registers 5

    .prologue
    .line 283
    const-string v0, "file_name_offline_delete_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 284
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 287
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 289
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$6;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v1, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 301
    :goto_3d
    return-void

    .line 300
    :cond_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    goto :goto_3d
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 113
    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 114
    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0900cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0900ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0901be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    .line 128
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    .line 136
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    .line 143
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method


# virtual methods
.method public changePageFragment(I)V
    .registers 4

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_78

    .line 432
    :goto_3
    return-void

    .line 397
    :pswitch_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-nez v0, :cond_f

    .line 398
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 400
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 404
    :pswitch_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-nez v0, :cond_26

    .line 405
    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 407
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 411
    :pswitch_32
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-nez v0, :cond_3d

    .line 412
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 414
    :cond_3d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 418
    :pswitch_49
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-nez v0, :cond_54

    .line 419
    new-instance v0, Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 421
    :cond_54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 425
    :pswitch_60
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-nez v0, :cond_6b

    .line 426
    new-instance v0, Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 428
    :cond_6b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 395
    nop

    :pswitch_data_78
    .packed-switch 0x7f0900ec
        :pswitch_4
        :pswitch_1b
        :pswitch_32
        :pswitch_49
        :pswitch_60
    .end packed-switch
.end method

.method public changePageSelect(I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 462
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8e

    .line 463
    if-ne p1, v1, :cond_4e

    .line 464
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0800bf

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 466
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    :goto_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 469
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0800c0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 471
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4a

    .line 475
    :cond_8e
    return-void
.end method

.method public initOfflineAddTrainPrograms()V
    .registers 7

    .prologue
    .line 305
    const-string v0, "file_name_offline_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 306
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_16

    .line 310
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 322
    :goto_41
    return-void

    .line 321
    :cond_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    goto :goto_41
.end method

.method public initOfflineUpdateTrainPrograms()V
    .registers 7

    .prologue
    .line 326
    const-string v0, "file_name_offline_update_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 327
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_16

    .line 331
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 343
    :goto_41
    return-void

    .line 342
    :cond_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    goto :goto_41
.end method

.method public initOfflineUpdateUsers()V
    .registers 5

    .prologue
    .line 245
    const-string v0, "file_name_offline_update_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 246
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3c

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 251
    :cond_33
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 263
    :goto_3b
    return-void

    .line 262
    :cond_3c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    goto :goto_3b
.end method

.method public initTrainPrograms()V
    .registers 4

    .prologue
    .line 347
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$9;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 360
    return-void
.end method

.method public initUsers()V
    .registers 4

    .prologue
    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 280
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 392
    :goto_7
    return-void

    .line 389
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    goto :goto_7

    .line 383
    :pswitch_data_10
    .packed-switch 0x7f0900ec
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initData()V

    .line 79
    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    .line 80
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-eqz v1, :cond_15

    .line 88
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    :cond_15
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    if-eqz v1, :cond_1e

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    :cond_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-eqz v1, :cond_27

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-eqz v1, :cond_30

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 99
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v1, :cond_39

    .line 100
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    :cond_39
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    if-eqz v1, :cond_42

    .line 103
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->calendarFragment:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    :cond_42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_49

    .line 109
    :goto_45
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 110
    return-void

    .line 106
    :catch_49
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .registers 6

    .prologue
    const v2, 0x7f0900a3

    .line 447
    if-nez p2, :cond_6

    .line 459
    :goto_5
    return-void

    .line 450
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 451
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 452
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 458
    :goto_23
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 453
    :cond_26
    if-eqz p1, :cond_38

    .line 454
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_23

    .line 456
    :cond_38
    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_23
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 71
    const v0, 0x7f0b0044

    return v0
.end method
