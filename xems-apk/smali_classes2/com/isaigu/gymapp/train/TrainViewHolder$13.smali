.class Lcom/isaigu/gymapp/train/TrainViewHolder$13;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->setBarsListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 336
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iput p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStateChangeListener(Landroid/view/View;F)V
    .registers 9

    .prologue
    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->getEditableProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 341
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # getter for: Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$600(Lcom/isaigu/gymapp/train/TrainViewHolder;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->val$index:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 342
    # getter for: Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, p2, v5

    .line 343
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 341
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method public onStopTrackingTouch(Landroid/view/View;F)V
    .registers 7

    .prologue
    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->getEditableProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 349
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->val$index:I

    float-to-int v3, p2

    aput v3, v1, v2

    .line 350
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->val$index:I

    aput p2, v0, v1

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$13;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$300(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 353
    return-void
.end method
