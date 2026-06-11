.class public Lcom/isaigu/gymapp/fragment/NewTrainFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewTrainFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"


# instance fields
.field private adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

.field private allStart:Z

.field binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

.field itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private mParam1:Ljava/lang/String;

.field manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private partsControl:[Z

.field private partsDisabled:[Z

.field recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

.field private selecting:Z

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 122
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

    .line 75
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 102
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 109
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 120
    new-instance v0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    .line 123
    new-array v0, v2, [Z

    .line 124
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsDisabled:[Z

    .line 125
    new-array v1, v2, [Z

    .line 126
    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    .line 127
    new-instance v2, Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-direct {v2, v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;-><init>([Z[Z)V

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    return-object v0
.end method

.method private changePartControl(I)V
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    aput-boolean v0, v1, p1

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 331
    return-void

    .line 329
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private changePartDisabled(I)V
    .registers 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsDisabled:[Z

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsDisabled:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    aput-boolean v0, v1, p1

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 336
    return-void

    .line 334
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static lambda$settingAllUser$15(Ljava/util/ArrayList;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 358
    iget-object v0, p2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;-><init>()V

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    return-object v0
.end method

.method private settingAllUser()V
    .registers 5

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;

    invoke-direct {v3, p0, v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 347
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/NewTrainFragment$21;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$21;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Ljava/util/List;)V

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->settingAllUser(Lcom/isaigu/gymapp/BaseActivity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method


# virtual methods
.method public applicationExit(Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->closeAll()V

    .line 387
    return-void
.end method

.method public getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;
    .registers 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 364
    instance-of v1, v0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_b

    .line 365
    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    .line 367
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public lambda$onCreateView$0$NewTrainFragment(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startOrStopAll()V

    .line 268
    return-void
.end method

.method public lambda$onCreateView$1$NewTrainFragment(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->resetAll()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 274
    return-void
.end method

.method public lambda$onCreateView$10$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 309
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 310
    return-void
.end method

.method public lambda$onCreateView$11$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 313
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 314
    return-void
.end method

.method public lambda$onCreateView$12$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 317
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 318
    return-void
.end method

.method public lambda$onCreateView$13$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 321
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 322
    return-void
.end method

.method public lambda$onCreateView$14$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 325
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 326
    return-void
.end method

.method public lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getIncreaseStepTenths()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    .line 278
    return-void
.end method

.method public lambda$onCreateView$3$NewTrainFragment(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getDecreaseStepTenths()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    .line 282
    return-void
.end method

.method public lambda$onCreateView$4$NewTrainFragment(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->settingAllUser()V

    .line 286
    return-void
.end method

.method public lambda$onCreateView$5$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 290
    return-void
.end method

.method public lambda$onCreateView$6$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 294
    return-void
.end method

.method public lambda$onCreateView$7$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 297
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 298
    return-void
.end method

.method public lambda$onCreateView$8$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 301
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 302
    return-void
.end method

.method public lambda$onCreateView$9$NewTrainFragment(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 305
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    .line 306
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mParam1:Ljava/lang/String;

    .line 156
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->init(Landroid/app/Application;)V

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    .line 162
    invoke-static {p1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    .line 164
    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$6;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$7;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allminus:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$8;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allPerson:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$9;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei1:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$10;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei2:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$11;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei3:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$12;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei4:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$13;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei5:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$14;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei6:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$15;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei7:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$16;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei8:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$17;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei9:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$18;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei10:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment$19;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$19;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 256
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 257
    new-instance v1, Lcom/isaigu/gymapp/train/TrainAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-direct {v1, v2, p0, v3}, Lcom/isaigu/gymapp/train/TrainAdapter;-><init>(Ljava/util/List;Lcom/isaigu/gymapp/fragment/NewTrainFragment;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 260
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startScan()V

    .line 262
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V

    .line 263
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 381
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 376
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->getTrainItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setRecordManager(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;)V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->getTrainItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method public onDeviceDisConnected(Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->disConnected(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public startOrStopAll()V
    .registers 3

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    if-eqz v0, :cond_21

    const v0, 0x7f0c006e

    :goto_12
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 392
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    if-eqz v0, :cond_25

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V

    .line 397
    :goto_1e
    return-void

    .line 390
    :cond_1f
    const/4 v0, 0x0

    goto :goto_5

    .line 391
    :cond_21
    const v0, 0x7f0c0069

    goto :goto_12

    .line 395
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V

    goto :goto_1e
.end method

.method public startScan()V
    .registers 1

    .prologue
    .line 371
    return-void
.end method
