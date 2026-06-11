.class public Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserTrainAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    }
.end annotation


# instance fields
.field private buweiSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[Z>;"
        }
    .end annotation
.end field

.field private colorArray:[[I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private maButtonBackgroundArray:[I

.field private maSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field private timerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field public userTrainControlHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V
    .registers 19
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 573
    const/4 v2, 0x6

    new-array v3, v2, [[I

    const/4 v4, 0x3

    new-array v5, v4, [I

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 574
    const v7, 0x7f06006f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    const/4 v8, 0x0

    aput v6, v5, v8

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    const/4 v9, 0x1

    aput v6, v5, v9

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v10, 0x7f06003a

    invoke-virtual {v6, v10}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    const/4 v11, 0x2

    aput v6, v5, v11

    aput-object v5, v3, v8

    new-array v5, v4, [I

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 575
    const v12, 0x7f060071

    invoke-virtual {v6, v12}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v8

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v13, 0x7f06003b

    invoke-virtual {v6, v13}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v9

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v13}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v11

    aput-object v5, v3, v9

    new-array v5, v4, [I

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 576
    const v14, 0x7f0600c0

    invoke-virtual {v6, v14}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v8

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v14}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v9

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v15, 0x7f06005a

    invoke-virtual {v6, v15}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v11

    aput-object v5, v3, v11

    new-array v5, v4, [I

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 577
    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v8

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v9

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v10}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v11

    aput-object v5, v3, v4

    new-array v5, v4, [I

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 578
    invoke-virtual {v6, v12}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v8

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v13}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v9

    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6, v13}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v6

    aput v6, v5, v11

    const/4 v6, 0x4

    aput-object v5, v3, v6

    new-array v4, v4, [I

    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 579
    invoke-virtual {v5, v14}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    aput v5, v4, v8

    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5, v14}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    aput v5, v4, v9

    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v5, v15}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    aput v5, v4, v11

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iput-object v3, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    .line 582
    new-array v2, v2, [I

    fill-array-data v2, :array_fe

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    .line 590
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 591
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    .line 592
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    .line 593
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    .line 595
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    .line 598
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 599
    return-void

    :array_fe
    .array-data 4
        0x7f080091
        0x7f080092
        0x7f08006b
        0x7f080091
        0x7f080092
        0x7f08006b
    .end array-data
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 4
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "x2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "x3"    # I

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p4, "x4"    # Z

    .line 571
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 571
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # I

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 4
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V
    .registers 5
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 571
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->changeTrainType(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 571
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 4
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;B)V
    .registers 3
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # B

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleGetBattery(Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 4
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "x3"    # I

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    return-void
.end method

.method private addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 8
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    .line 1407
    if-eqz p1, :cond_97

    if-nez p2, :cond_6

    goto/16 :goto_97

    .line 1410
    :cond_6
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1424
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1438
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->setting:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V

    .line 1496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_50

    .line 1497
    move v1, v0

    .line 1498
    .local v1, "fi":I
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v2, v2, v0

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V

    .line 1535
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;

    invoke-direct {v3, p0, p3, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    .end local v1    # "fi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1543
    .end local v0    # "i":I
    :cond_50
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;

    invoke-direct {v1, p0, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->save:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1676
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1681
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1686
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$14;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1691
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$15;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$15;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->stop:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$16;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$16;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;ILcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1728
    return-void

    .line 1408
    :cond_97
    :goto_97
    return-void
.end method

.method private addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 6
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1731
    if-eqz p1, :cond_69

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_7

    goto :goto_69

    .line 1734
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1735
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;-><init>()V

    .line 1736
    .local v0, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    .line 1737
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    .line 1738
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1739
    .local v1, "program":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    .line 1740
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    .line 1741
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    .line 1742
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    .line 1743
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    .line 1744
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    .line 1745
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 1746
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    .line 1747
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    .line 1748
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1749
    const/4 v2, 0x0

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 1751
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    .end local v0    # "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    .end local v1    # "program":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_68
    return-void

    .line 1732
    :cond_69
    :goto_69
    return-void
.end method

.method private changeTrainType(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V
    .registers 10
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "oriType"    # I
    .param p4, "position"    # I

    .line 1816
    if-eqz p1, :cond_46

    if-nez p2, :cond_5

    goto :goto_46

    .line 1819
    :cond_5
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    .line 1820
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v1, 0x0

    if-eq v0, p3, :cond_13

    move v0, p3

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1821
    .local v0, "type":I
    :goto_14
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v0, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1822
    iput-boolean v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1823
    iput-boolean v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1824
    iput v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1825
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1827
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1828
    .local v2, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iput v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1829
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v1, v3, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1830
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 1832
    invoke-direct {p0, p1, p2, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1833
    invoke-direct {p0, p1, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1835
    return-void

    .line 1817
    .end local v0    # "type":I
    .end local v2    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_46
    :goto_46
    return-void
.end method

.method private emptyItemCheck()V
    .registers 7

    .line 620
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_19

    .line 621
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 622
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 623
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v0    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_19
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-nez v0, :cond_ad

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_41

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_2d
    rsub-int/lit8 v4, v3, 0x3

    if-ge v0, v4, :cond_40

    .line 629
    new-instance v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v4}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 630
    .local v4, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v1, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 631
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v4    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_40
    goto :goto_72

    .line 634
    :cond_41
    const/4 v0, 0x1

    .line 635
    .local v0, "allItem":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5b

    .line 636
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v4, v1, :cond_58

    .line 637
    const/4 v0, 0x0

    .line 635
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 640
    .end local v3    # "i":I
    :cond_5b
    if-eqz v0, :cond_72

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_72

    .line 641
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 642
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iput v1, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 643
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v0    # "allItem":Z
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_72
    :goto_72
    const/4 v0, 0x0

    .local v0, "itemCount":I
    const/4 v3, 0x0

    .line 647
    .local v3, "emptyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_75
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9d

    .line 648
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v5, v1, :cond_8c

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 650
    :cond_8c
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v5, :cond_9a

    .line 651
    add-int/lit8 v0, v0, 0x1

    .line 647
    :cond_9a
    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 654
    .end local v4    # "i":I
    :cond_9d
    add-int v4, v0, v3

    if-le v4, v2, :cond_ad

    if-le v3, v1, :cond_ad

    .line 655
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 659
    .end local v0    # "itemCount":I
    .end local v3    # "emptyCount":I
    :cond_ad
    return-void
.end method

.method private handleGetBattery(Ljava/lang/String;B)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "battery"    # B

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_75

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_76

    .line 782
    :try_start_7
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 783
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_72

    if-ge v1, v2, :cond_70

    .line 785
    :try_start_18
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_68

    .line 786
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 787
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 788
    .local v3, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v3, :cond_68

    if-eqz v2, :cond_68

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 789
    iput p2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    .line 790
    iget-object v4, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    invoke-virtual {v4, p2}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 791
    iget-object v4, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_67} :catch_69
    .catchall {:try_start_18 .. :try_end_67} :catchall_72

    .line 792
    goto :goto_70

    .line 797
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v3    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_68
    goto :goto_6d

    .line 795
    :catch_69
    move-exception v2

    .line 796
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 800
    .end local v1    # "i":I
    :cond_70
    :goto_70
    monitor-exit v0

    goto :goto_75

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_72

    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "battery":B
    :try_start_74
    throw v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_76

    .line 804
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p2    # "battery":B
    :cond_75
    :goto_75
    goto :goto_7a

    .line 802
    :catch_76
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7a
    return-void
.end method

.method private isPartSelected()Z
    .registers 5

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "select":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 978
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    array-length v3, v3

    if-ge v2, v3, :cond_27

    .line 979
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_24

    .line 980
    const/4 v0, 0x1

    .line 981
    goto :goto_27

    .line 978
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 984
    .end local v2    # "j":I
    :cond_27
    :goto_27
    if-eqz v0, :cond_2a

    .line 985
    goto :goto_2d

    .line 977
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 988
    .end local v1    # "i":I
    :cond_2d
    :goto_2d
    return v0
.end method

.method private isRowSelected()Z
    .registers 4

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, "selected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 993
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 994
    const/4 v0, 0x1

    .line 995
    goto :goto_1d

    .line 992
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 998
    .end local v1    # "i":I
    :cond_1d
    :goto_1d
    return v0
.end method

.method private removeTrainRecord(Ljava/lang/String;)V
    .registers 3
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 1780
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1781
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    :cond_15
    return-void
.end method

.method private set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 19
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "useType"    # I
    .param p3, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 1865
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v5, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v6, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v7, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v8, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v9, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v10, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v11, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v3, 0x7

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v12, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/16 v3, 0x8

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v13, v1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v14, v1

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v3 .. v14}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_10_part_parameter(Ljava/lang/String;IIIIIIIIIII)V

    .line 1876
    return-void
.end method

.method private set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    .registers 16
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "useType"    # I
    .param p3, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p4, "start"    # Z

    .line 1882
    iget v2, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iget v3, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget v4, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iget v5, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v6, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v7, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v8, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v9, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    move-object v0, p1

    move v1, p2

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_other_parameter(Ljava/lang/String;IIIIIIIIIZ)V

    .line 1887
    return-void
.end method

.method private declared-synchronized startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 7
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "position"    # I

    monitor-enter p0

    .line 1139
    if-eqz p1, :cond_20

    if-nez p2, :cond_6

    goto :goto_20

    .line 1142
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1144
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2, v1, v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    .line 1304
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    .line 1305
    monitor-exit p0

    return-void

    .line 1138
    .end local v0    # "timer":Ljava/util/Timer;
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .end local p1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local p2    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local p3    # "position":I
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1140
    .restart local p1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .restart local p2    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local p3    # "position":I
    :cond_20
    :goto_20
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 6
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p2, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p3, "position"    # I

    monitor-enter p0

    .line 1122
    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    .line 1125
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1126
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 1127
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2d

    .line 1136
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    :cond_2b
    monitor-exit p0

    return-void

    .line 1121
    .end local p1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local p2    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local p3    # "position":I
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1123
    .restart local p1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .restart local p2    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local p3    # "position":I
    :cond_30
    :goto_30
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 11
    .param p1, "holder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    monitor-enter p0

    .line 1837
    if-eqz p1, :cond_70

    if-nez p2, :cond_6

    goto :goto_70

    .line 1840
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 1841
    .local v0, "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-nez v0, :cond_1a

    .line 1842
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    move-object v0, v1

    .line 1844
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    :cond_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1845
    .local v1, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1846
    .local v2, "oldTrainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iput-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1847
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1848
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1849
    .local v3, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1850
    const-string v4, "www"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f3a\u5ea6\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1852
    iput-boolean v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1853
    iput v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1854
    iget-object v5, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1856
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1857
    invoke-direct {p0, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1859
    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v6, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_6d

    .line 1861
    monitor-exit p0

    return-void

    .line 1836
    .end local v0    # "train":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v2    # "oldTrainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v3    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local p1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local p2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local p3    # "position":I
    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1838
    .restart local p1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local p2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .restart local p3    # "position":I
    :cond_70
    :goto_70
    monitor-exit p0

    return-void
.end method

.method private updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 5
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "position"    # I

    .line 1110
    if-eqz p1, :cond_23

    if-ltz p2, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_f

    goto :goto_23

    .line 1113
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1114
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_1f

    .line 1115
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_22

    .line 1117
    :cond_1f
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1119
    :goto_22
    return-void

    .line 1111
    .end local v0    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_23
    :goto_23
    return-void
.end method

.method private updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1756
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    if-nez p3, :cond_f

    goto :goto_63

    .line 1759
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1760
    return-void

    .line 1762
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 1763
    .local v0, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    const-string v1, "maxBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1764
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1765
    .local v1, "integer":F
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_44

    .line 1766
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1767
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 1769
    .end local v1    # "integer":F
    :cond_44
    goto :goto_62

    :cond_45
    const-string v1, "minBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1770
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1771
    .restart local v1    # "integer":F
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5e

    .line 1772
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 1774
    .end local v1    # "integer":F
    :cond_5e
    goto :goto_62

    .line 1775
    :cond_5f
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1777
    :goto_62
    return-void

    .line 1757
    .end local v0    # "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    :cond_63
    :goto_63
    return-void
.end method

.method private updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 16
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .param p3, "position"    # I

    .line 1340
    if-eqz p2, :cond_1e3

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_1e3

    if-eqz p1, :cond_1e3

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v0, :cond_1e3

    if-ltz p3, :cond_1e3

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_1e3

    .line 1343
    :cond_18
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1344
    .local v0, "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1345
    .local v1, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v2, :cond_31

    .line 1348
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v3, 0x7f0c0068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_39

    .line 1351
    :cond_31
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v3, 0x7f0c0067

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1354
    :goto_39
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 1355
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1357
    .local v2, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6d
    const/16 v4, 0xa

    const/high16 v5, 0x42c80000    # 100.0f

    const v6, 0x7f0d006e

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v3, v4, :cond_f3

    .line 1358
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v4, v4, v3

    iget-object v10, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v11, v10, p3

    aget v7, v11, v7

    aget-object v11, v10, p3

    aget v11, v11, v9

    aget-object v10, v10, p3

    aget v10, v10, v8

    invoke-virtual {v4, v7, v11, v10}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 1359
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v4, v4, v3

    iget-object v7, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v7, v7, v3

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 1360
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v7, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v9, v9, v3

    int-to-float v9, v9

    div-float/2addr v9, v5

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    mul-float v9, v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f060062

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1363
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_ef

    .line 1364
    iget-object v4, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v5, v5, p3

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    :cond_ef
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6d

    .line 1367
    .end local v3    # "i":I
    :cond_f3
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v10, v4, p3

    aget v10, v10, v8

    aget-object v11, v4, p3

    aget v11, v11, v9

    aget-object v4, v4, p3

    aget v4, v4, v7

    invoke-virtual {v3, v10, v11, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 1368
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    iget v10, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 1371
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v4, v4, p3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_13f

    .line 1373
    :cond_137
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v4, 0x7f080090

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1376
    :goto_13f
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v4, 0x7f0800c3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1377
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1378
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1379
    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v3, v9, :cond_15e

    .line 1380
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v4, 0x7f0800c5

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_178

    .line 1381
    :cond_15e
    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v3, v7, :cond_16b

    .line 1382
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    const v4, 0x7f0800c4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_178

    .line 1383
    :cond_16b
    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_178

    .line 1384
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    const v4, 0x7f0800c2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1387
    :cond_178
    :goto_178
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v4, v4

    const/high16 v6, 0x42960000    # 75.0f

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 1389
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v4, " s"

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1390
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1391
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1392
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1393
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1394
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1396
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->name:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->address:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->time:Landroid/widget/TextView;

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    invoke-static {v4}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_1da

    .line 1401
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v4, 0x7f0c006d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1e2

    .line 1403
    :cond_1da
    iget-object v3, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v4, 0x7f0c006a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1405
    :goto_1e2
    return-void

    .line 1341
    .end local v0    # "program":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    .end local v2    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_1e3
    :goto_1e3
    return-void
.end method


# virtual methods
.method public declared-synchronized addUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 16
    .param p1, "data"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    monitor-enter p0

    .line 662
    if-nez p1, :cond_19

    .line 663
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synchronized  addUser data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_132

    .line 664
    monitor-exit p0

    return-void

    .line 666
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u6a21\u5f0f \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 667
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xa

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_c8

    .line 668
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v10, :cond_12a

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v0, v10, :cond_12a

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "containEmpty":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6f
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_8d

    .line 671
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v13, v13, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v13, v10, :cond_8a

    .line 672
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13, v12, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 673
    const/4 v0, 0x1

    .line 674
    goto :goto_8d

    .line 670
    :cond_8a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f

    .line 677
    .end local v12    # "i":I
    :cond_8d
    :goto_8d
    if-nez v0, :cond_9c

    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v9, :cond_9c

    .line 678
    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_9c
    if-eqz v0, :cond_c7

    .line 681
    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    new-array v8, v8, [Z

    aput-boolean v11, v8, v11

    aput-boolean v11, v8, v10

    aput-boolean v11, v8, v7

    aput-boolean v11, v8, v6

    aput-boolean v11, v8, v5

    aput-boolean v11, v8, v4

    aput-boolean v11, v8, v9

    aput-boolean v11, v8, v3

    aput-boolean v11, v8, v2

    aput-boolean v11, v8, v1

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 685
    .end local v0    # "containEmpty":Z
    :cond_c7
    goto :goto_12a

    .line 687
    :cond_c8
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_12a

    .line 688
    const/4 v0, 0x0

    .line 689
    .restart local v0    # "containEmpty":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d2
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f0

    .line 690
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v13, v13, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v13, v10, :cond_ed

    .line 691
    iget-object v13, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v13, v12, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/4 v0, 0x1

    .line 693
    goto :goto_f0

    .line 689
    :cond_ed
    add-int/lit8 v12, v12, 0x1

    goto :goto_d2

    .line 696
    .end local v12    # "i":I
    :cond_f0
    :goto_f0
    if-nez v0, :cond_ff

    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v9, :cond_ff

    .line 697
    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_ff
    if-eqz v0, :cond_12a

    .line 700
    iget-object v12, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    new-array v8, v8, [Z

    aput-boolean v11, v8, v11

    aput-boolean v11, v8, v10

    aput-boolean v11, v8, v7

    aput-boolean v11, v8, v6

    aput-boolean v11, v8, v5

    aput-boolean v11, v8, v4

    aput-boolean v11, v8, v9

    aput-boolean v11, v8, v3

    aput-boolean v11, v8, v2

    aput-boolean v11, v8, v1

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 706
    .end local v0    # "containEmpty":Z
    :cond_12a
    :goto_12a
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 707
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_130
    .catchall {:try_start_19 .. :try_end_130} :catchall_132

    .line 708
    monitor-exit p0

    return-void

    .line 661
    .end local p1    # "data":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catchall_132
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearAllMASelect()V
    .registers 4

    .line 969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 970
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 972
    .local v1, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v1, v2, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 969
    .end local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 974
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public clearAllPartSelect()V
    .registers 5

    .line 958
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 959
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 960
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 962
    .end local v1    # "j":I
    :cond_23
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 963
    .local v1, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v1, v2, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 958
    .end local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 966
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method public firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 9
    .param p1, "userHolder"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .param p2, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1787
    if-eqz p1, :cond_a5

    if-nez p2, :cond_6

    goto/16 :goto_a5

    .line 1790
    :cond_6
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1791
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    const/4 v1, 0x0

    .line 1792
    .local v1, "progress":I
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-lez v2, :cond_5b

    .line 1794
    iput-boolean v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1795
    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 1796
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1797
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1798
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1799
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1800
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a4

    .line 1802
    :cond_5b
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v2, :cond_a4

    .line 1804
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1805
    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 1806
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1807
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1808
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0600bc

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1809
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1810
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v5, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1813
    :cond_a4
    :goto_a4
    return-void

    .line 1788
    .end local v0    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v1    # "progress":I
    :cond_a5
    :goto_a5
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 1890
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1891
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1893
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 1900
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1901
    .local v0, "user":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    return v1
.end method

.method public getmData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public handleColumnOperation(I)V
    .registers 7
    .param p1, "index"    # I

    .line 931
    if-ltz p1, :cond_54

    const/16 v0, 0x9

    if-le p1, v0, :cond_7

    goto :goto_54

    .line 934
    :cond_7
    const/4 v0, 0x1

    .line 935
    .local v0, "allSelect":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 936
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1f

    .line 937
    const/4 v0, 0x0

    .line 938
    goto :goto_22

    .line 935
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 942
    .end local v1    # "i":I
    :cond_22
    :goto_22
    const/4 v1, 0x0

    .line 943
    .local v1, "value":Z
    if-nez v0, :cond_26

    .line 944
    const/4 v1, 0x1

    .line 946
    :cond_26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 947
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    aput-boolean v1, v3, p1

    .line 948
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 949
    .local v3, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v3, v4, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 946
    .end local v3    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 952
    .end local v2    # "i":I
    :cond_53
    return-void

    .line 932
    .end local v0    # "allSelect":Z
    .end local v1    # "value":Z
    :cond_54
    :goto_54
    return-void
.end method

.method public declared-synchronized handleConnectionStatusChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "connected"    # Z

    monitor-enter p0

    .line 1311
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1337
    monitor-exit p0

    return-void

    .line 1310
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .end local p1    # "macAddress":Ljava/lang/String;
    .end local p2    # "connected":Z
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleRowAndIndexOperation(II)V
    .registers 5
    .param p1, "row"    # I
    .param p2, "index"    # I

    .line 906
    if-ltz p1, :cond_41

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_41

    if-ltz p2, :cond_41

    const/16 v0, 0x9

    if-le p2, v0, :cond_13

    goto :goto_41

    .line 909
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    aget-boolean v1, v1, p2

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p2

    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 912
    return-void

    .line 907
    :cond_41
    :goto_41
    return-void
.end method

.method public handleRowOperation(I)V
    .registers 5
    .param p1, "index"    # I

    .line 915
    if-ltz p1, :cond_64

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_64

    .line 918
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 920
    .local v0, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 921
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 922
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # invokes: Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    goto :goto_58

    .line 924
    :cond_4b
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # invokes: Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$800(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    .line 925
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 927
    :goto_58
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 929
    return-void

    .line 916
    .end local v0    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_64
    :goto_64
    return-void
.end method

.method public handleStartPauseAllUser()V
    .registers 8

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 826
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 827
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v2, :cond_16

    .line 828
    goto :goto_76

    .line 830
    :cond_16
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 831
    .local v2, "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v2, :cond_76

    .line 832
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 833
    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 834
    iget-boolean v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v4, :cond_34

    .line 835
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 836
    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    goto :goto_36

    .line 838
    :cond_34
    iput-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 840
    :goto_36
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_3f

    .line 841
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_start(Ljava/lang/String;)V

    .line 843
    :cond_3f
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 844
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    iget-boolean v6, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 845
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_68

    .line 846
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 848
    :cond_68
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 849
    invoke-direct {p0, v2, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_76} :catch_7a

    .line 825
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 854
    .end local v0    # "i":I
    :cond_79
    goto :goto_7e

    .line 852
    :catch_7a
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void
.end method

.method public handleStartPauseAllUser(Z)V
    .registers 9
    .param p1, "start"    # Z

    .line 860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 861
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 862
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v2, :cond_16

    .line 863
    goto :goto_72

    .line 865
    :cond_16
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 866
    .local v2, "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v2, :cond_72

    .line 867
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 868
    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 869
    iput-boolean p1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 870
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_32

    .line 871
    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 873
    :cond_32
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_3b

    .line 874
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_start(Ljava/lang/String;)V

    .line 876
    :cond_3b
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 877
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    iget-boolean v6, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 879
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_64

    .line 880
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 883
    :cond_64
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v2, v3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 884
    invoke-direct {p0, v2, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_72} :catch_76

    .line 860
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "userTrainControlHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_72
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 889
    .end local v0    # "i":I
    :cond_75
    goto :goto_7a

    .line 887
    :catch_76
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7a
    return-void
.end method

.method public handleStopAllUser()V
    .registers 5

    .line 894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 895
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 896
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_2d

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v2, :cond_2d

    .line 897
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 898
    .local v2, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    invoke-direct {p0, v2, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 899
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 894
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 903
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public handleStrenthChange(I)V
    .registers 13
    .param p1, "value"    # I

    .line 1013
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isPartSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    .line 1014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a6

    .line 1015
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1016
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v3, :cond_1e

    .line 1017
    goto/16 :goto_a2

    .line 1019
    :cond_1e
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1020
    .local v3, "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-boolean v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_8b

    .line 1021
    const/4 v4, 0x0

    .line 1022
    .local v4, "contain":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2a
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z

    array-length v6, v6

    if-ge v5, v6, :cond_80

    .line 1023
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_7d

    .line 1024
    const/4 v4, 0x1

    .line 1025
    iget v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1026
    .local v6, "strenth":I
    if-lez v6, :cond_7d

    .line 1027
    iget-object v7, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v7, v7, v5

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    int-to-float v9, v6

    mul-float v7, v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1028
    .local v7, "vStrenth":I
    add-int/2addr v7, p1

    .line 1029
    invoke-static {v7, v1, v6}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v7

    .line 1030
    if-lez p1, :cond_6e

    .line 1031
    iget-object v9, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    int-to-float v10, v7

    mul-float v10, v10, v8

    int-to-float v8, v6

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v9, v5

    goto :goto_7d

    .line 1033
    :cond_6e
    iget-object v9, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    int-to-float v10, v7

    mul-float v10, v10, v8

    int-to-float v8, v6

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v9, v5

    .line 1022
    .end local v6    # "strenth":I
    .end local v7    # "vStrenth":I
    :cond_7d
    :goto_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1038
    .end local v5    # "j":I
    :cond_80
    if-eqz v4, :cond_8b

    .line 1039
    iget-object v5, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v5, v6, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1042
    .end local v4    # "contain":Z
    :cond_8b
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1043
    .local v4, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v4, v5, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1014
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v3    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v4    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .end local v0    # "i":I
    :cond_a6
    goto :goto_111

    .line 1045
    :cond_a7
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isRowSelected()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 1046
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ae
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_111

    .line 1047
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1048
    .restart local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10e

    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v3, :cond_d1

    .line 1049
    goto :goto_10e

    .line 1051
    :cond_d1
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1052
    .restart local v3    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-boolean v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v4, :cond_f7

    .line 1053
    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1054
    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_e8

    .line 1055
    iput v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1057
    :cond_e8
    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-gez v4, :cond_ee

    .line 1058
    iput v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1060
    :cond_ee
    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-direct {p0, v4, v5, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1062
    :cond_f7
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1063
    .restart local v4    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0, v4, v5, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1046
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v3    # "dataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .end local v4    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    :cond_10e
    :goto_10e
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 1106
    .end local v0    # "i":I
    :cond_111
    :goto_111
    return-void
.end method

.method public isSomeoneStart()Z
    .registers 4

    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 812
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 813
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v1, :cond_1e

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eqz v2, :cond_18

    .line 814
    goto :goto_1e

    .line 816
    :cond_18
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_1e

    .line 817
    const/4 v2, 0x1

    return v2

    .line 811
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 10
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 757
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_d4

    .line 758
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 759
    .local v0, "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holder position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 762
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7b

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_7b

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v5, "sample"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 763
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v2

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_ac

    .line 765
    :cond_7b
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const v5, 0x7f0c0020

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v2

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 767
    :goto_ac
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 768
    .local v2, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-eqz v2, :cond_bf

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v3, :cond_b5

    goto :goto_bf

    .line 772
    :cond_b5
    invoke-direct {p0, v0, v1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 773
    invoke-direct {p0, v0, v1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 774
    invoke-direct {p0, v0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_d4

    .line 769
    :cond_bf
    :goto_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data bean null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 770
    return-void

    .line 776
    .end local v0    # "userHolder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_d4
    :goto_d4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 732
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_39

    .line 733
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0073

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 734
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 735
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_1e

    .line 736
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v4

    .line 738
    :cond_1e
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 740
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    return-object v0

    .line 743
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b006d

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 744
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 745
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_52

    .line 746
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v4

    .line 748
    :cond_52
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 749
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 750
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public declared-synchronized removeUser(I)V
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 711
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_74

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 712
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    goto :goto_74

    .line 716
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 717
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 719
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 720
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$700(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$500(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 727
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_76

    .line 728
    monitor-exit p0

    return-void

    .line 713
    .end local v0    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    .line 710
    .end local p1    # "index":I
    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 603
    if-nez p1, :cond_b

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 606
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 607
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_3a

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 610
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 611
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 612
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 613
    return-void

    nop

    :array_3a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
