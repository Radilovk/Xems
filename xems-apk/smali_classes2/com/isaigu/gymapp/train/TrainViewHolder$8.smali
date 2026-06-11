.class Lcom/isaigu/gymapp/train/TrainViewHolder$8;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/AmountView2$OnAmountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V
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
    .line 146
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$8;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$8;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 150
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 151
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->getActivePhaseBean(Lcom/isaigu/gymapp/bean/TrainProgram;Z)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_17

    .line 153
    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 158
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$8;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$8;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$300(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 160
    return-void

    .line 156
    :cond_22
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iput p2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_17
.end method
