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

.method private static getPartPduValue(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)B
    .registers 4

    .prologue
    .line 27
    aget-boolean v0, p1, p2

    if-eqz v0, :cond_6

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    goto :goto_5
.end method

.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 18
    const/16 v1, 0xb

    new-array v1, v1, [B

    .line 19
    aput-byte v0, v1, v0

    .line 20
    :goto_a
    const/16 v2, 0xa

    if-ge v0, v2, :cond_19

    .line 21
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)B

    move-result v3

    aput-byte v3, v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 23
    :cond_19
    return-object v1
.end method

.method public static getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B
    .registers 9

    .prologue
    .line 34
    const/16 v0, 0xb

    new-array v2, v0, [B

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v2, v0

    .line 36
    int-to-long v0, p1

    .line 37
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_17

    const-wide/16 v4, 0x5

    cmp-long v3, v0, v4

    if-gtz v3, :cond_17

    .line 38
    const-wide/16 v0, 0x5

    .line 40
    :cond_17
    const/4 v3, 0x1

    const-wide/16 v4, 0x100

    div-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 41
    const/4 v3, 0x2

    const-wide/16 v4, 0x100

    rem-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 42
    const/4 v3, 0x3

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 43
    const/4 v3, 0x4

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->resolveGlobalPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    div-int/lit8 v4, v4, 0x32

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 44
    const/4 v3, 0x5

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 45
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_67

    .line 46
    const/4 v0, 0x6

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 50
    :goto_4b
    const/4 v0, 0x7

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 51
    const/16 v0, 0x8

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 52
    const/16 v0, 0x9

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 53
    const/16 v1, 0xa

    if-eqz p2, :cond_6c

    const/4 v0, 0x1

    :goto_64
    aput-byte v0, v2, v1

    .line 54
    return-object v2

    .line 48
    :cond_67
    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-byte v1, v2, v0

    goto :goto_4b

    .line 53
    :cond_6c
    const/4 v0, 0x0

    goto :goto_64
.end method
