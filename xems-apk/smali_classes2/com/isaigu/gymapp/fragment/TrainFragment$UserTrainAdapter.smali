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
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass6;,
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;
    }
.end annotation


# instance fields
.field private buweiSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[Z>;"
        }
    .end annotation
.end field

.field private colorArray:[[I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private maButtonBackgroundArray:[I

.field private maSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field private timerMap:Ljava/util/HashMap;
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

.field public userTrainControlHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, 0x7f06003b

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 532
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_f0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    .line 533
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 534
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    .line 535
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    .line 540
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v7, [I

    const v2, 0x7f06006f

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f06006f

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    const v2, 0x7f06003a

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [I

    const v2, 0x7f060071

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p1, v8}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {p1, v8}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [I

    const v2, 0x7f0600c0

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0600c0

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    const v2, 0x7f06005a

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [I

    const v2, 0x7f06006f

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f06006f

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    const v2, 0x7f06003a

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [I

    const v3, 0x7f060071

    invoke-virtual {p1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v4

    invoke-virtual {p1, v8}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p1, v8}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [I

    const v3, 0x7f0600c0

    invoke-virtual {p1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0600c0

    invoke-virtual {p1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    const v3, 0x7f06005a

    invoke-virtual {p1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    .line 541
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 542
    return-void

    .line 532
    :array_f0
    .array-data 4
        0x7f080091
        0x7f080092
        0x7f08006b
        0x7f080091
        0x7f080092
        0x7f08006b
    .end array-data
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method private addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 7

    .prologue
    .line 1297
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1476
    :cond_4
    :goto_4
    return-void

    .line 1300
    :cond_5
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1315
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 1330
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->setting:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V

    .line 1365
    const/4 v0, 0x0

    :goto_2e
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 1367
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v1, v1, v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V

    .line 1404
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;

    invoke-direct {v2, p0, p3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1413
    :cond_4e
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;

    invoke-direct {v1, p0, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->save:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1466
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->stop:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;ILcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method private emptyItemCheck()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 563
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_1b

    .line 564
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 565
    iput v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 566
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_1b
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-nez v0, :cond_b3

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_41

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v2

    .line 571
    :goto_2e
    rsub-int/lit8 v3, v1, 0x3

    if-ge v0, v3, :cond_73

    .line 572
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 573
    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 574
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_41
    move v1, v2

    move v3, v4

    .line 578
    :goto_43
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5c

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v0, v4, :cond_58

    move v3, v2

    .line 578
    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    .line 583
    :cond_5c
    if-eqz v3, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_73

    .line 584
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 585
    iput v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    .line 586
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    move v1, v2

    move v3, v2

    move v5, v2

    .line 591
    :goto_76
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 592
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v0, v4, :cond_92

    .line 593
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 591
    :goto_8d
    add-int/lit8 v2, v1, 0x1

    move v1, v2

    move v3, v0

    goto :goto_76

    .line 594
    :cond_92
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v0, :cond_b4

    .line 595
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_8d

    .line 598
    :cond_a2
    add-int v0, v5, v3

    .line 599
    if-le v0, v6, :cond_b3

    if-le v3, v4, :cond_b3

    .line 600
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    :cond_b3
    return-void

    :cond_b4
    move v0, v3

    goto :goto_8d
.end method

.method private isPartSelected()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 913
    move v1, v2

    move v3, v2

    .line 914
    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    move v4, v2

    .line 917
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    array-length v0, v0

    if-lt v4, v0, :cond_1a

    .line 927
    :goto_17
    if-eqz v3, :cond_2c

    .line 931
    :cond_19
    return v3

    .line 920
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_2a

    .line 921
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    .line 923
    :cond_2a
    const/4 v3, 0x1

    .line 924
    goto :goto_17

    .line 914
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method private isRowSelected()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 935
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 936
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 937
    const/4 v2, 0x1

    .line 940
    :cond_19
    return v2

    .line 935
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private resolvePulseWidth(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 1792
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->resolveGlobalPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 10

    .prologue
    .line 1015
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 1021
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1018
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1019
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    .line 1020
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 1015
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 6

    .prologue
    .line 1650
    if-eqz p1, :cond_67

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 1651
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;-><init>()V

    .line 1652
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    .line 1653
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    .line 1654
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1655
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    .line 1656
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    .line 1657
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    .line 1658
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    .line 1659
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    .line 1660
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    .line 1661
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 1662
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    .line 1663
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    .line 1664
    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1665
    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 1666
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    :cond_67
    return-void
.end method

.method public declared-synchronized addUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 7

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 607
    monitor-enter p0

    if-nez p1, :cond_1e

    .line 608
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synchronized  addUser data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_a8

    .line 663
    :goto_1c
    monitor-exit p0

    return-void

    .line 611
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u6a21\u5f0f \uff1a "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 612
    sget-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    if-eqz v0, :cond_c2

    .line 613
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_a0

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-ne v0, v2, :cond_a0

    move v3, v1

    .line 617
    :goto_6c
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_ab

    .line 628
    :goto_74
    if-nez v1, :cond_83

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_83

    .line 629
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_83
    if-eqz v1, :cond_a0

    .line 632
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    fill-array-data v1, :array_118

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 661
    :cond_a0
    :goto_a0
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 662
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_a6
    .catchall {:try_start_1e .. :try_end_a6} :catchall_a8

    goto/16 :goto_1c

    .line 607
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eq v0, v2, :cond_bb

    .line 621
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6c

    .line 623
    :cond_bb
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 625
    goto :goto_74

    .line 637
    :cond_c2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_a0

    move v3, v1

    .line 641
    :goto_cb
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_101

    move v0, v1

    .line 652
    :goto_d4
    if-nez v0, :cond_e3

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_e3

    .line 653
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_e3
    if-eqz v0, :cond_a0

    .line 656
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    fill-array-data v1, :array_122

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_a0

    .line 644
    :cond_101
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-eq v0, v2, :cond_111

    .line 645
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_cb

    .line 647
    :cond_111
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_116
    .catchall {:try_start_ab .. :try_end_116} :catchall_a8

    move v0, v2

    .line 649
    goto :goto_d4

    .line 632
    :array_118
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

    .line 656
    nop

    :array_122
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

.method public changeTrainType(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1732
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1748
    :cond_5
    :goto_5
    return-void

    .line 1735
    :cond_6
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    .line 1736
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-eq v1, p3, :cond_43

    .line 1737
    :goto_11
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput p3, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1738
    iput-boolean v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1739
    iput-boolean v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1740
    iput v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1741
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1742
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 1743
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1744
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1745
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 1746
    invoke-virtual {p0, p1, p2, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1747
    invoke-virtual {p0, p1, p4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_5

    :cond_43
    move p3, v0

    .line 1736
    goto :goto_11
.end method

.method public clearAllMASelect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 905
    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e

    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 908
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 905
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 910
    :cond_2e
    return-void
.end method

.method public clearAllPartSelect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 895
    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3f

    move v1, v3

    .line 896
    :goto_b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    array-length v0, v0

    if-ge v1, v0, :cond_24

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    aput-boolean v3, v0, v1

    .line 896
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 899
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 900
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 895
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 902
    :cond_3f
    return-void
.end method

.method public firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 10

    .prologue
    const v6, 0x7f0600bc

    const v5, 0x7f0600bb

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1703
    if-eqz p1, :cond_f

    if-nez p2, :cond_10

    .line 1728
    :cond_f
    :goto_f
    return-void

    .line 1706
    :cond_10
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1707
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v1, :cond_5a

    .line 1708
    iput-boolean v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1709
    iget v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1710
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1711
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1712
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1713
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1714
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 1718
    :cond_5a
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v1, :cond_f

    .line 1719
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1720
    iget v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1721
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1722
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1723
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1724
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1725
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 1798
    if-eqz v0, :cond_9

    .line 1799
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1801
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1807
    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    return v0
.end method

.method public getmData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public handleColumnOperation(I)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 867
    if-ltz p1, :cond_8

    const/16 v0, 0x9

    if-le p1, v0, :cond_9

    .line 892
    :cond_8
    return-void

    :cond_9
    move v1, v2

    .line 873
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_41

    move v0, v3

    .line 884
    :goto_13
    if-nez v0, :cond_53

    .line 887
    :goto_15
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    aput-boolean v3, v0, p1

    .line 889
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 890
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 887
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 876
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_51

    .line 877
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_51
    move v0, v2

    .line 880
    goto :goto_13

    :cond_53
    move v3, v2

    goto :goto_15
.end method

.method public declared-synchronized handleConnectionStatusChange(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 1206
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1232
    monitor-exit p0

    return-void

    .line 1206
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleGetBattery(Ljava/lang/String;B)V
    .registers 8

    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_6b

    .line 731
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_77

    .line 732
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 733
    const/4 v0, 0x0

    move v2, v0

    :goto_11
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_74

    move-result v0

    if-ge v2, v0, :cond_6a

    .line 735
    :try_start_19
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_70

    .line 736
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 737
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 738
    if-eqz v1, :cond_70

    if-eqz v0, :cond_70

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 739
    iput p2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    .line 740
    iget-object v0, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 741
    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6a} :catch_6c
    .catchall {:try_start_19 .. :try_end_6a} :catchall_74

    .line 752
    :cond_6a
    :try_start_6a
    monitor-exit v3

    .line 757
    :cond_6b
    :goto_6b
    return-void

    .line 747
    :catch_6c
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    :cond_70
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 752
    :catchall_74
    move-exception v0

    monitor-exit v3
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_77} :catch_77

    .line 754
    :catch_77
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method public handleRowAndIndexOperation(II)V
    .registers 5

    .prologue
    .line 843
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_12

    if-ltz p2, :cond_12

    const/16 v0, 0x9

    if-le p2, v0, :cond_13

    .line 848
    :cond_12
    :goto_12
    return-void

    .line 846
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

    if-nez v1, :cond_42

    const/4 v1, 0x1

    :goto_28
    aput-boolean v1, v0, p2

    .line 847
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

    invoke-virtual {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto :goto_12

    .line 846
    :cond_42
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public handleRowOperation(I)V
    .registers 5

    .prologue
    .line 851
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    .line 864
    :cond_c
    :goto_c
    return-void

    .line 854
    :cond_d
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_58

    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 856
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 857
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    .line 858
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 863
    :goto_4c
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    goto :goto_c

    .line 854
    :cond_58
    const/4 v0, 0x0

    goto :goto_1e

    .line 860
    :cond_5a
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 861
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    goto :goto_4c
.end method

.method public handleStartPauseAllUser()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 771
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_80

    .line 773
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 774
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    if-eqz v1, :cond_74

    .line 775
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 776
    const/4 v3, 0x0

    iput v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 777
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_78

    .line 778
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 779
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 783
    :goto_34
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_3d

    .line 784
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_start(Ljava/lang/String;)V

    .line 786
    :cond_3d
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 787
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    iget-boolean v6, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 788
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_66

    .line 789
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 791
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v1, v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 792
    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 771
    :cond_74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 781
    :cond_78
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7b} :catch_7c

    goto :goto_34

    .line 794
    :catch_7c
    move-exception v0

    .line 795
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    :cond_80
    return-void
.end method

.method public handleStartPauseAllUser(Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 803
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7b

    .line 805
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 806
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_73

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    if-eqz v1, :cond_73

    .line 807
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 808
    const/4 v3, 0x0

    iput v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 809
    iput-boolean p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 810
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_33

    .line 811
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->firstUpdatePulseContinue(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 813
    :cond_33
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_3c

    .line 814
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_start(Ljava/lang/String;)V

    .line 816
    :cond_3c
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 817
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    iget-boolean v6, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 818
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_65

    .line 819
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 821
    :cond_65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v1, v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 822
    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_73} :catch_77

    .line 803
    :cond_73
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 824
    :catch_77
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    :cond_7b
    return-void
.end method

.method public handleStopAllUser()V
    .registers 5

    .prologue
    .line 832
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_32

    .line 833
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 834
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_2e

    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_2e

    .line 835
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 836
    invoke-virtual {p0, v1, v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 837
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_stop(Ljava/lang/String;)V

    .line 832
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 840
    :cond_32
    return-void
.end method

.method public handleStrenthChange(I)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 944
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isPartSelected()Z

    move-result v0

    if-eqz v0, :cond_6d

    move v2, v3

    .line 945
    :goto_8
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c5

    .line 946
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 947
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_69

    .line 948
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 949
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_52

    move v4, v3

    move v5, v3

    .line 951
    :goto_28
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    array-length v1, v1

    if-ge v4, v1, :cond_47

    .line 952
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_43

    .line 953
    const/4 v5, 0x1

    .line 954
    invoke-static {v6, v4, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 951
    :cond_43
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_28

    .line 957
    :cond_47
    if-eqz v5, :cond_52

    .line 958
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-virtual {p0, v1, v0, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 961
    :cond_52
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 962
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 945
    :cond_69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 967
    :cond_6d
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isRowSelected()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 968
    :goto_73
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c5

    .line 969
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 970
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c2

    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v1, :cond_c2

    .line 971
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 972
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_ab

    .line 973
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustOverallMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 974
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 976
    :cond_ab
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 977
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 968
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 981
    :cond_c5
    return-void
.end method

.method public isSomeoneStart()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 760
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 762
    if-eqz v0, :cond_1e

    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v3, :cond_1e

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_1e

    .line 763
    const/4 v2, 0x1

    .line 766
    :cond_1d
    return v2

    .line 760
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 706
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_9c

    .line 707
    check-cast p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holder position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 711
    if-eqz v0, :cond_4d

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v2, "sample"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 712
    :cond_4d
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 716
    :goto_7e
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 717
    if-eqz v1, :cond_86

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_cc

    .line 718
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bean null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 725
    :cond_9c
    :goto_9c
    return-void

    .line 714
    :cond_9d
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_7e

    .line 721
    :cond_cc
    invoke-direct {p0, p1, v0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 722
    invoke-virtual {p0, p1, v0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_9c
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 682
    if-nez p2, :cond_38

    .line 683
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 685
    if-nez v0, :cond_1d

    .line 686
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 688
    :cond_1d
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 689
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 690
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    .line 701
    :goto_37
    return-object v0

    .line 693
    :cond_38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 694
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 695
    if-nez v0, :cond_50

    .line 696
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 698
    :cond_50
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 699
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 700
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V

    goto :goto_37
.end method

.method public removeTrainRecord(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1698
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    :cond_15
    return-void
.end method

.method public declared-synchronized removeUser(I)V
    .registers 5

    .prologue
    .line 666
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_71

    .line 667
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 670
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 671
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$200(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 676
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_73

    .line 678
    :cond_71
    monitor-exit p0

    return-void

    .line 666
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set_mode_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 16

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 1777
    invoke-static {p3}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1778
    new-array v11, v3, [I

    move v0, v1

    .line 1779
    :goto_9
    if-ge v0, v3, :cond_18

    .line 1780
    invoke-static {p3, v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v11, v0

    .line 1779
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1782
    :cond_18
    aget v2, v11, v1

    const/4 v0, 0x1

    aget v3, v11, v0

    const/4 v0, 0x2

    aget v4, v11, v0

    const/4 v0, 0x3

    aget v5, v11, v0

    const/4 v0, 0x4

    aget v6, v11, v0

    const/4 v0, 0x5

    aget v7, v11, v0

    const/4 v0, 0x6

    aget v8, v11, v0

    const/4 v0, 0x7

    aget v9, v11, v0

    const/16 v0, 0x8

    aget v10, v11, v0

    const/16 v0, 0x9

    aget v11, v11, v0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v11}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_10_part_parameter(Ljava/lang/String;IIIIIIIIIII)V

    .line 1783
    return-void
.end method

.method public set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    .registers 16

    .prologue
    .line 1787
    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->resolvePulseWidth(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    .line 1788
    iget v2, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iget v3, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget v5, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v6, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v7, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v8, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v9, p3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    move-object v0, p1

    move v1, p2

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_set_mode_other_parameter(Ljava/lang/String;IIIIIIIIIZ)V

    .line 1789
    return-void
.end method

.method public declared-synchronized stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 6

    .prologue
    .line 998
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 1012
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1001
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1002
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->timerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 1003
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    goto :goto_5

    .line 998
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUser(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 8

    .prologue
    .line 1752
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 1773
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1755
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 1756
    if-nez v0, :cond_1a

    .line 1757
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>()V

    .line 1759
    :cond_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1760
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1761
    iput-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1762
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 1763
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1764
    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1765
    const-string v1, "www"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f3a\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1767
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1768
    const/4 v1, 0x0

    iput v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1769
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1770
    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1771
    invoke-virtual {p0, p1, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1772
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-boolean v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->set_mode_other_10_part_parameter(Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V
    :try_end_70
    .catchall {:try_start_7 .. :try_end_70} :catchall_71

    goto :goto_5

    .line 1752
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 545
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    .line 546
    if-nez p1, :cond_c

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    :cond_c
    move v0, v1

    .line 549
    :goto_d
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 550
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    const/16 v3, 0xa

    new-array v3, v3, [Z

    fill-array-data v3, :array_3a

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 553
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 554
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->emptyItemCheck()V

    .line 555
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 556
    return-void

    .line 550
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

.method public updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .registers 5

    .prologue
    .line 985
    if-eqz p1, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_f

    .line 994
    :cond_e
    :goto_e
    return-void

    .line 988
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 989
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_1f

    .line 990
    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->startTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_e

    .line 992
    :cond_1f
    invoke-virtual {p0, v0, p1, p2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->stopTimer(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    goto :goto_e
.end method

.method public updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1672
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    if-eqz p3, :cond_41

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1673
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 1674
    const-string v1, "maxBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1675
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1676
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_41

    .line 1677
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 1678
    float-to-int v1, v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 1693
    :cond_41
    :goto_41
    return-void

    .line 1683
    :cond_42
    const-string v1, "minBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1684
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1685
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_41

    .line 1686
    float-to-int v1, v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    goto :goto_41

    .line 1691
    :cond_5b
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41
.end method

.method public updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .registers 13

    .prologue
    .line 1236
    if-eqz p2, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v0, :cond_16

    if-ltz p3, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1294
    :cond_16
    :goto_16
    return-void

    .line 1239
    :cond_17
    iget-object v2, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1240
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1241
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_e0

    .line 1242
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1246
    :goto_2f
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 1247
    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 1249
    const/4 v0, 0x0

    move v1, v0

    :goto_66
    const/16 v0, 0xa

    if-ge v1, v0, :cond_ea

    .line 1250
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, v1

    .line 1251
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    .line 1252
    aget-object v6, v5, p3

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, v5, p3

    const/4 v8, 0x1

    aget v7, v7, v8

    aget-object v5, v5, p3

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-virtual {v0, v6, v7, v5}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 1253
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, v1

    iget-object v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v5, v5, v1

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 1254
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f0d006e

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)F

    move-result v8

    invoke-static {v8}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v6, 0x7f060062

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1256
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->buweiSelected:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_dc

    .line 1257
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1249
    :cond_dc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    .line 1244
    :cond_e0
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2f

    .line 1260
    :cond_ea
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1261
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->colorArray:[[I

    .line 1262
    aget-object v5, v1, p3

    const/4 v6, 0x0

    aget v5, v5, v6

    aget-object v6, v1, p3

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v1, v1, p3

    const/4 v7, 0x2

    aget v1, v1, v7

    invoke-virtual {v0, v5, v6, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 1263
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v5, 0x7f0d006e

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;)F

    move-result v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maSelected:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1265
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->maButtonBackgroundArray:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1269
    :goto_137
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1270
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1271
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1272
    iget v0, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1ce

    .line 1273
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1279
    :cond_15c
    :goto_15c
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v1, v1

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 1280
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1283
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 1284
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1285
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 1286
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->name:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->address:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->time:Landroid/widget/TextView;

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    invoke-static {v1}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_1eb

    .line 1290
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_16

    .line 1267
    :cond_1c4
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_137

    .line 1274
    :cond_1ce
    iget v0, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1dc

    .line 1275
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_15c

    .line 1276
    :cond_1dc
    iget v0, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15c

    .line 1277
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_15c

    .line 1292
    :cond_1eb
    iget-object v0, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_16
.end method
