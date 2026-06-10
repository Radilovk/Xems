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

.method private sendPulse()V
    .registers 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_7

    .line 147
    :goto_6
    return-void

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_1f

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_6

    .line 145
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_6
.end method


# virtual methods
.method public addAllPartValue(I)V
    .registers 3

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    .line 190
    return-void
.end method

.method public addAllPartValue(IZ)V
    .registers 6

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 194
    const/4 v0, 0x0

    :goto_9
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 195
    if-nez p2, :cond_18

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    .line 196
    :cond_18
    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 194
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 199
    :cond_1e
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 200
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 201
    return-void
.end method

.method public addStrenth(I)V
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 205
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->adjustOverallMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 206
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 207
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 208
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v0, :cond_7

    .line 182
    :goto_6
    return-void

    .line 171
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->receiver:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->close()V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/model/TrainItem$4;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 181
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
    .line 223
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty:Z

    return v0
.end method

.method public isMaSelected()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    return v0
.end method

.method public lambda$close$1$TrainItem()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 186
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
    .line 134
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->updateRecordValue(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 136
    return-void
.end method

.method public onTrainItemChange()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 213
    if-eqz v0, :cond_7

    .line 214
    invoke-interface {v0}, Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;->onTrainItemChange()V

    .line 216
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
    .line 243
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:Lcom/clj/fastble/data/BleDevice;

    .line 244
    return-void
.end method

.method public setMaSelected(Z)V
    .registers 2

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 240
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
    .line 231
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->selected:Z

    .line 232
    return-void
.end method

.method public setTrainItemListener(Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->trainItemListener:Lcom/isaigu/gymapp/train/listener/OnTrainItemListener;

    .line 220
    return-void
.end method

.method public setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 248
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    .line 249
    return-void
.end method

.method public setUserType(I)V
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 151
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 152
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 153
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 154
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
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    if-lez v0, :cond_a

    .line 106
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    .line 108
    :cond_a
    new-instance v0, Lcom/isaigu/gymapp/train/model/TrainItem$3;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/TrainItem$3;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;JJ)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    .line 127
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_3b

    if-nez v0, :cond_35

    .line 131
    :goto_33
    monitor-exit p0

    return-void

    .line 130
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    goto :goto_33

    .line 105
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_33

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V

    .line 163
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 165
    :cond_33
    monitor-exit p0

    return-void

    .line 157
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
