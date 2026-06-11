.class public Lcom/isaigu/gymapp/train/utils/CommandUtil;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# static fields
.field public static final CMD_BATTERY:B = 0x5t

.field public static final CMD_CHANGE:B = -0x3ft

.field public static final CMD_CLOSE:B = -0x10t

.field public static final CMD_RUN:B = 0x3t

.field public static final CMD_SETTING:B = 0x1t

.field public static final CMD_START:B = -0xft

.field public static final CMD_STOP:B = -0xet

.field public static final RSP_BATTERY:B = 0x6t


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPartPduValue([I[ZII)B
    .registers 6

    .prologue
    .line 35
    aget-boolean v0, p1, p2

    if-eqz v0, :cond_6

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_5
    return v0

    :cond_6
    aget v0, p0, p2

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_5
.end method

.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 18
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 19
    const/16 v2, 0xb

    new-array v2, v2, [B

    aput-byte v3, v2, v3

    .line 21
    invoke-static {v0, p1, v3, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v3

    aput-byte v3, v2, v4

    .line 22
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v3

    aput-byte v3, v2, v5

    .line 23
    invoke-static {v0, p1, v5, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v3

    aput-byte v3, v2, v6

    .line 24
    invoke-static {v0, p1, v6, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v3

    aput-byte v3, v2, v7

    const/4 v3, 0x5

    .line 25
    invoke-static {v0, p1, v7, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x5

    .line 26
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x6

    .line 27
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x7

    .line 28
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    aput-byte v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x8

    .line 29
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x9

    .line 30
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v0

    aput-byte v0, v2, v3

    .line 19
    return-object v2
.end method

.method public static getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B
    .registers 9

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v2, v0, [B

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v2, v0

    .line 44
    int-to-long v0, p1

    .line 45
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_17

    const-wide/16 v4, 0x5

    cmp-long v3, v0, v4

    if-gtz v3, :cond_17

    .line 46
    const-wide/16 v0, 0x5

    .line 48
    :cond_17
    const/4 v3, 0x1

    const-wide/16 v4, 0x100

    div-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 49
    const/4 v3, 0x2

    const-wide/16 v4, 0x100

    rem-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 50
    const/4 v3, 0x3

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 51
    const/4 v3, 0x4

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ChannelPulseUtil;->resolveGlobalPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    div-int/lit8 v4, v4, 0x32

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 52
    const/4 v3, 0x5

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 53
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_67

    .line 54
    const/4 v0, 0x6

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 58
    :goto_4b
    const/4 v0, 0x7

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 59
    const/16 v0, 0x8

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 60
    const/16 v0, 0x9

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 61
    const/16 v1, 0xa

    if-eqz p2, :cond_6c

    const/4 v0, 0x1

    :goto_64
    aput-byte v0, v2, v1

    .line 62
    return-object v2

    .line 56
    :cond_67
    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-byte v1, v2, v0

    goto :goto_4b

    .line 61
    :cond_6c
    const/4 v0, 0x0

    goto :goto_64
.end method
