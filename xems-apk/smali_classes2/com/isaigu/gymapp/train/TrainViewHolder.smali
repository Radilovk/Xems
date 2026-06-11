.class public Lcom/isaigu/gymapp/train/TrainViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrainViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;
    }
.end annotation


# instance fields
.field private bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field private binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

.field circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

.field private context:Landroid/content/Context;

.field private eBinding:Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

.field private fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field private final isEmpty:Z

.field item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

.field private texts:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .registers 6

    .prologue
    .line 52
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$1;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    .line 78
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    .line 79
    iput-object p3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 80
    if-eqz p1, :cond_3e

    .line 81
    invoke-static {p2}, Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->eBinding:Lcom/isaigu/gymapp/databinding/TrainEmptyItemLayoutBinding;

    .line 82
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindEmptyListener()V

    .line 88
    :goto_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 89
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void

    .line 84
    :cond_3e
    invoke-static {p2}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->init()V

    .line 86
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V

    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/BaseActivity;
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)[Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    return-object v0
.end method

.method private bindEmptyListener()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$11;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$11;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    return-void
.end method

.method private bindListener()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$2;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$3;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->stop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$5;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$6;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$7;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$8;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->circleSeekBarListener:Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V

    .line 154
    const/4 v0, 0x0

    :goto_5e
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_69

    .line 155
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->setBarsListener(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 157
    :cond_69
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->setting:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->save:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$9;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$10;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method private bindNotEmpty()V
    .registers 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$12;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$12;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainItemListener(Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;)V

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSelected()Z

    .line 230
    return-void
.end method

.method private getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview1:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview2:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview3:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview4:Landroid/widget/TextView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview5:Landroid/widget/TextView;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview6:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview7:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview8:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview9:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview10:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness1:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness2:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness3:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness4:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness5:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness6:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness7:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness8:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness9:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness10:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v1, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v2, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 98
    return-void
.end method

.method private onItemChange()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/listener/OnTrainListListener;->onItemChange(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 350
    return-void
.end method

.method private setBarsListener(I)V
    .registers 7

    .prologue
    const v3, 0x7f06006f

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, p1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v2

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v0, v0, p1

    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder$13;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/TrainViewHolder$13;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V

    .line 341
    return-void
.end method

.method private updateTime()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v3, v2, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v2, :cond_69

    .line 302
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600bb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 303
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v4, :cond_81

    .line 304
    mul-int/lit8 v4, v3, 0x1e

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    div-int v0, v4, v0

    .line 312
    :goto_32
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v3, v3, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v3, v3, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 316
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v1}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 307
    :cond_69
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600bc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 308
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v4, :cond_81

    .line 309
    mul-int/lit8 v4, v3, 0x1e

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    div-int v0, v4, v0

    goto :goto_32

    :cond_81
    move v0, v1

    goto :goto_32
.end method


# virtual methods
.method public bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V
    .registers 4

    .prologue
    .line 214
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 215
    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 216
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    if-nez v0, :cond_b

    .line 217
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindNotEmpty()V

    .line 219
    :cond_b
    return-void
.end method

.method public getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    return-object v0
.end method

.method public lambda$bindNotEmpty$9$TrainViewHolder()V
    .registers 12

    .prologue
    const v10, 0x7f0d006e

    const/16 v9, 0x3c

    const v8, 0x7f0800c3

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v3, v3, 0x4b

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;)F

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 237
    :goto_42
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    if-ge v0, v3, :cond_ba

    .line 238
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v3, v3, v0

    .line 239
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aget-object v4, v4, v0

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 240
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)F

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_9c

    .line 242
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    const v5, 0x7f06005b

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 237
    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 245
    :cond_9c
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    const v5, 0x7f060025

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_99

    .line 249
    :cond_ba
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_20f

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    const v3, 0x7f0c006d

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 254
    :goto_cc
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->address:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 259
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v0, v7, :cond_21b

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 266
    :cond_111
    :goto_111
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v3, " s"

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/widget/AmountView2;->setMinValue(I)V

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    const-string v3, " s"

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountUnit(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setMinValue(I)V

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/widget/AmountView2;->setGoods_storage(I)V

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmount(I)V

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->MyBatterView:Lcom/isaigu/gymapp/widget/BatterView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/BatterView;->setProgress(I)V

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->batteryValueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_249

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;

    const v2, 0x7f0c0068

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    :goto_1b0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_255

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    const v2, 0x7f080091

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 288
    :goto_1c2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v2, "sample"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 289
    :cond_1e0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v2, 0x7f0c0020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v2, v7, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 293
    :goto_20b
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateTime()V

    .line 294
    return-void

    .line 252
    :cond_20f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    const v3, 0x7f0c006a

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 261
    :cond_21b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_232

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    const v3, 0x7f0800c4

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto/16 :goto_111

    .line 263
    :cond_232
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_111

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    const v3, 0x7f0800c2

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto/16 :goto_111

    .line 281
    :cond_249
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;

    const v2, 0x7f0c0067

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1b0

    .line 286
    :cond_255
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    const v2, 0x7f080090

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1c2

    .line 291
    :cond_261
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v2, v7, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_20b
.end method
