.class Lcom/isaigu/gymapp/train/model/TrainItem$2;
.super Landroid/os/CountDownTimer;
.source "TrainItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/TrainItem;->start()V
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
    .line 81
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 90
    const-string v0, "www"

    const-string v1, "\u5de5\u4f5c\u7ed3\u675f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->saveTrainRecord(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 93
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 86
    return-void
.end method
