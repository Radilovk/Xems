.class Lcom/isaigu/gymapp/train/TrainViewHolder$1;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;-><init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 8

    .prologue
    .line 56
    int-to-float v0, p2

    const/high16 v1, 0x42960000    # 75.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # getter for: Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 58
    # getter for: Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 59
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 57
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 8

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 66
    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    .line 67
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 68
    sub-int v3, v0, v2

    const/16 v4, 0x14

    if-le v3, v4, :cond_1d

    .line 69
    add-int/lit8 v0, v2, 0x14

    .line 71
    :cond_1d
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 72
    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 75
    return-void
.end method
