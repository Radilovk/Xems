.class public Lcom/isaigu/gymapp/train/model/TrainItem;
.super Ljava/lang/Object;
.source "TrainItem.java"


# instance fields
.field commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

.field public data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

.field device:Lcom/clj/fastble/data/BleDevice;

.field private handler:Landroid/os/Handler;

.field private isEmpty:Z

.field private maSelected:Z

.field public partsControl:[Z

.field public partsDisabled:[Z

.field pulseCountDown:Landroid/os/CountDownTimer;

.field receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

.field recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

.field private selected:Z

.field sender:Lcom/isaigu/gymapp/train/model/CommandSender;

.field private trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

.field workCountDown:Landroid/os/CountDownTimer;

.field public workLength:I


# direct methods
.method public constructor <init>(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->handler:Landroid/os/Handler;

    .line 30
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 31
    iput v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 32
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem$1;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    .line 38
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    .line 41
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->resolveNextPhaseDuration()I

    move-result v0

    return v0
.end method

.method private hasActivePulseCycle()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 133
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->getPhaseDurationSeconds(Lcom/isaigu/gymapp/bean/TrainProgram;Z)I

    move-result v3

    if-lez v3, :cond_19

    .line 134
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->getPhaseDurationSeconds(Lcom/isaigu/gymapp/bean/TrainProgram;Z)I

    move-result v2

    if-lez v2, :cond_19

    .line 137
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 134
    goto :goto_18

    .line 136
    :cond_1b
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 137
    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-gtz v3, :cond_27

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v2, :cond_28

    :cond_27
    move v1, v0

    :cond_28
    move v0, v1

    goto :goto_18
.end method

.method private resolveNextPhaseDuration()I
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->getPhaseDurationSeconds(Lcom/isaigu/gymapp/bean/TrainProgram;Z)I

    move-result v0

    return v0
.end method

.method private sendPulse()V
    .registers 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_7

    .line 160
    :goto_6
    return-void

    .line 153
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->getActivePhaseBean(Lcom/isaigu/gymapp/bean/TrainProgram;Z)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v2, :cond_1f

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 156
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_6

    .line 158
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_6
.end method


# virtual methods
.method public addAllPartValue(I)V
    .registers 3

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    .line 203
    return-void
.end method

.method public addAllPartValue(IZ)V
    .registers 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 207
    const/4 v0, 0x0

    :goto_9
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 208
    if-nez p2, :cond_18

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    .line 209
    :cond_18
    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 207
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 212
    :cond_1e
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 213
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 214
    return-void
.end method

.method public addStrenth(I)V
    .registers 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 218
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustOverallMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 219
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 221
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_7

    .line 195
    :goto_6
    return-void

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->close()V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/model/TrainItem$4;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->removeTrainRecord(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method public init([Z[Z)V
    .registers 7

    .prologue
    .line 53
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 54
    iput-object p2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    .line 56
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 57
    new-instance v1, Lcom/isaigu/gymapp/train/model/CommandReceiver;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->commandListener:Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/isaigu/gymapp/train/model/CommandReceiver;-><init>(Lcom/clj/fastble/data/BleDevice;Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 59
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 60
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty:Z

    return v0
.end method

.method public isMaSelected()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    return v0
.end method

.method public lambda$close$1$TrainItem()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 199
    return-void
.end method

.method public lambda$new$0$TrainItem(I)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->batteryValue:I

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 74
    return-void
.end method

.method public onParamsChange()V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->updateRecordValue(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 147
    return-void
.end method

.method public onTrainItemChange()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 226
    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;->onTrainItemChange()V

    .line 229
    :cond_7
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 68
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 69
    return-void
.end method

.method public setDevice(Lcom/clj/fastble/data/BleDevice;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    .line 257
    return-void
.end method

.method public setMaSelected(Z)V
    .registers 2

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 253
    return-void
.end method

.method public setRecordManager(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    .line 50
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    .line 245
    return-void
.end method

.method public setTrainItemListener(Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 233
    return-void
.end method

.method public setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 261
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 262
    return-void
.end method

.method public setUserType(I)V
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 164
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 165
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 167
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_d

    .line 101
    :cond_c
    :goto_c
    return-void

    .line 80
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 81
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$2;

    iget v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/TrainItem$2;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V

    .line 95
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workCountDown:Landroid/os/CountDownTimer;

    .line 96
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStart()V

    .line 98
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->startPulse()V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 100
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    goto :goto_c
.end method

.method public declared-synchronized startPulse()V
    .registers 7

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->applyTrainProgramDefaults(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    if-lez v0, :cond_11

    .line 107
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 109
    :cond_11
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$3;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/TrainItem$3;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    .line 124
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->hasActivePulseCycle()Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_30

    move-result v0

    if-nez v0, :cond_2a

    .line 128
    :goto_28
    monitor-exit p0

    return-void

    .line 127
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_28

    .line 105
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_33

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 176
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 178
    :cond_33
    monitor-exit p0

    return-void

    .line 170
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
