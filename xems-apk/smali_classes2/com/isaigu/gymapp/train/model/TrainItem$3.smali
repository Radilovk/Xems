.class Lcom/isaigu/gymapp/train/model/TrainItem$3;
.super Landroid/os/CountDownTimer;
.source "TrainItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V
    .registers 6

    .prologue
    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_36

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 124
    :goto_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V

    .line 125
    return-void

    .line 118
    :cond_34
    const/4 v0, 0x0

    goto :goto_12

    .line 122
    :cond_36
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    goto :goto_2e
.end method

.method public onTick(J)V
    .registers 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$3;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 113
    return-void
.end method
