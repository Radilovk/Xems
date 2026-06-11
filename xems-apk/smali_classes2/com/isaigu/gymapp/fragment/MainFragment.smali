.class public Lcom/isaigu/gymapp/fragment/MainFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
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

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    return-void

    .line 64
    nop

    :array_1c
    .array-data 4
        0x7f0c0060
        0x7f0c007a
        0x7f0c0064
        0x7f0c007d
        0x7f0c0061
    .end array-data

    .line 65
    :array_2a
    .array-data 4
        0x7f0c0078
        0x7f0c0079
        0x7f0c0052
        0x7f0c007c
        0x7f0c0053
    .end array-data
.end method

.method private initData()V
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0d00e5

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f0d00d2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->title:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f0d00f0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3b

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    :cond_3b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 163
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v0, :cond_68

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 166
    :cond_68
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_8b

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 170
    :cond_8b
    const-string v0, "file_name_offline_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 171
    if-eqz v0, :cond_a6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a6

    .line 172
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_a6
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_c9

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 178
    :cond_c9
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-string v0, "file_name_register_protocol_data"

    const-class v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 209
    :goto_d9
    return-void

    .line 181
    :cond_da
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserBindMachine(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getCurrentProtocol(Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 206
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddUser()V

    .line 207
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineDeleteTrainProgram()V

    .line 208
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainRecord()V

    goto :goto_d9
.end method

.method private initOfflineAddTrainRecord()V
    .registers 3

    .prologue
    .line 352
    const-string v0, "file_name_offline_train_record_data"

    const-class v1, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 353
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 354
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecordList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 368
    :cond_1a
    return-void
.end method

.method private initOfflineAddUser()V
    .registers 6

    .prologue
    .line 212
    const-string v0, "file_name_offline_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_34

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    .line 218
    :cond_34
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->submitUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 230
    :goto_3c
    return-void

    .line 229
    :cond_3d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    goto :goto_3c
.end method

.method private initOfflineDeleteTrainProgram()V
    .registers 5

    .prologue
    .line 272
    const-string v0, "file_name_offline_delete_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 273
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 276
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 278
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$6;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v1, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->deleteProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 290
    :goto_3d
    return-void

    .line 289
    :cond_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddTrainPrograms()V

    goto :goto_3d
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 109
    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->frameLayout:Landroid/widget/FrameLayout;

    .line 110
    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0900cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0900ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0901be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0901c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0900ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    .line 122
    const v0, 0x7f0900ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    .line 123
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0900f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv2:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv3:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv4:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv5:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    .line 139
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->tv5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    .line 146
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li3:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li4:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->li5:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method


# virtual methods
.method public changePageFragment(I)V
    .registers 4

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_60

    .line 414
    :goto_3
    return-void

    .line 386
    :pswitch_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-nez v0, :cond_f

    .line 387
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 389
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 393
    :pswitch_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-nez v0, :cond_26

    .line 394
    new-instance v0, Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 396
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 400
    :pswitch_32
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-nez v0, :cond_3d

    .line 401
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 403
    :cond_3d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 407
    :pswitch_49
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-nez v0, :cond_54

    .line 408
    new-instance v0, Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 410
    :cond_54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageSelect(I)V

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 384
    :pswitch_data_60
    .packed-switch 0x7f0900ec
        :pswitch_4
        :pswitch_1b
        :pswitch_32
        :pswitch_49
    .end packed-switch
.end method

.method public changePageSelect(I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 432
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8e

    .line 433
    if-ne p1, v1, :cond_4e

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0800bf

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageSelected:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 437
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

    .line 432
    :goto_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 439
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->ll_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0800c0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->iv_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->imageUnselect:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 442
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

    .line 445
    :cond_8e
    return-void
.end method

.method public initOfflineAddTrainPrograms()V
    .registers 7

    .prologue
    .line 294
    const-string v0, "file_name_offline_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_16

    .line 299
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 311
    :goto_41
    return-void

    .line 310
    :cond_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateTrainPrograms()V

    goto :goto_41
.end method

.method public initOfflineUpdateTrainPrograms()V
    .registers 7

    .prologue
    .line 315
    const-string v0, "file_name_offline_update_train_program_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    goto :goto_16

    .line 320
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateProgramTrainDataList(JLjava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 332
    :goto_41
    return-void

    .line 331
    :cond_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initTrainPrograms()V

    goto :goto_41
.end method

.method public initOfflineUpdateUsers()V
    .registers 5

    .prologue
    .line 234
    const-string v0, "file_name_offline_update_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 235
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3c

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 240
    :cond_33
    new-instance v0, Lcom/isaigu/gymapp/fragment/MainFragment$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateUserDataList(Ljava/util/List;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 252
    :goto_3b
    return-void

    .line 251
    :cond_3c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initUsers()V

    goto :goto_3b
.end method

.method public initTrainPrograms()V
    .registers 4

    .prologue
    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$9;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserProgramTrainDataList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 349
    return-void
.end method

.method public initUsers()V
    .registers 4

    .prologue
    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/MainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 269
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 381
    :goto_7
    return-void

    .line 378
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    goto :goto_7

    .line 372
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
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initData()V

    .line 78
    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/MainFragment;->changePageFragment(I)V

    .line 79
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    if-eqz v1, :cond_15

    .line 87
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->settingFragment:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    :cond_15
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    if-eqz v1, :cond_1e

    .line 90
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->trainFragment:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    :cond_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    if-eqz v1, :cond_27

    .line 93
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->userFragment:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    if-eqz v1, :cond_30

    .line 96
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->videoListFragment:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 98
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v1, :cond_39

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    :cond_39
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_40

    .line 105
    :goto_3c
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 106
    return-void

    .line 102
    :catch_40
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public switchFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .registers 6

    .prologue
    const v2, 0x7f0900a3

    .line 417
    if-nez p2, :cond_6

    .line 429
    :goto_5
    return-void

    .line 420
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 421
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 422
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 428
    :goto_23
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 423
    :cond_26
    if-eqz p1, :cond_38

    .line 424
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_23

    .line 426
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
    .line 70
    const v0, 0x7f0b0044

    return v0
.end method
