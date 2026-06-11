.class public Lcom/isaigu/gymapp/train/model/CommandSender;
.super Ljava/lang/Object;
.source "CommandSender.java"


# instance fields
.field private commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;",
            ">;"
        }
    .end annotation
.end field

.field device:Lcom/clj/fastble/data/BleDevice;

.field private handler:Landroid/os/Handler;

.field private writing:Z


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/clj/fastble/data/BleDevice;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->handler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z

    .line 31
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->device:Lcom/clj/fastble/data/BleDevice;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/train/model/CommandSender;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandSender;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/CommandSender;)V
    .registers 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 24
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/CommandSender;->postWrite()V

    return-void
.end method

.method private declared-synchronized postWrite()V
    .registers 6

    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2f

    .line 81
    .local v0, "deviceCommend":Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    if-nez v0, :cond_14

    .line 82
    monitor-exit p0

    return-void

    .line 84
    :cond_14
    :try_start_14
    iput-boolean v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z

    .line 85
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/train/model/-$$Lambda$CommandSender$RihoiG4MsHHeMDH04A0cwm0tV0E;-><init>(Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V

    const/16 v3, -0xe

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->getCommend()B

    move-result v4

    if-ne v3, v4, :cond_28

    const-wide/16 v3, 0x3e8

    goto :goto_2a

    :cond_28
    const-wide/16 v3, 0x64

    :goto_2a
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2f

    .line 86
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "deviceCommend":Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    .end local p0    # "this":Lcom/isaigu/gymapp/train/model/CommandSender;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
    .registers 5
    .param p1, "deviceCommend"    # Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    .line 89
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->writeCommendToByte()[B

    move-result-object v0

    .line 90
    .local v0, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5199\u5165\u547d\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/HexUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->device:Lcom/clj/fastble/data/BleDevice;

    new-instance v2, Lcom/isaigu/gymapp/train/model/CommandSender$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/train/model/CommandSender$1;-><init>(Lcom/isaigu/gymapp/train/model/CommandSender;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->write(Lcom/clj/fastble/data/BleDevice;[BLcom/clj/fastble/callback/BleWriteCallback;)V

    .line 105
    return-void
.end method


# virtual methods
.method public synthetic lambda$postWrite$0$CommandSender(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
    .registers 2
    .param p1, "deviceCommend"    # Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    .line 85
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/model/CommandSender;->writeCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V

    return-void
.end method

.method public sendBattery()V
    .registers 3

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 53
    .local v0, "data":[B
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 55
    return-void
.end method

.method public sendCommend(B[B)V
    .registers 5
    .param p1, "commend"    # B
    .param p2, "pdu"    # [B

    .line 71
    new-instance v0, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;

    invoke-direct {v0, p1, p2}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;-><init>(B[B)V

    .line 72
    .local v0, "deviceCommend":Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/CommandSender;->postWrite()V

    .line 74
    return-void
.end method

.method public sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 6
    .param p1, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p2, "partsDisabled"    # [Z
    .param p3, "workLength"    # I

    .line 58
    if-nez p3, :cond_3

    .line 59
    return-void

    .line 61
    :cond_3
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 62
    const/4 v0, 0x3

    invoke-static {p1, p3, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 63
    return-void
.end method

.method public sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 5
    .param p1, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p2, "workLength"    # I

    .line 66
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 67
    return-void
.end method

.method public sendStart()V
    .registers 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 44
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 45
    const/16 v1, -0xf

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 46
    return-void
.end method

.method public sendStop()V
    .registers 3

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 37
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 38
    const/16 v1, -0xe

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendCommend(B[B)V

    .line 39
    return-void
.end method
