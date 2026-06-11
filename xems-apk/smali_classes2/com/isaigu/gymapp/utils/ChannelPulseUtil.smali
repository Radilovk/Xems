.class public final Lcom/isaigu/gymapp/utils/ChannelPulseUtil;
.super Ljava/lang/Object;
.source "ChannelPulseUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getEffectivePulseWidthUs(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 11
    if-eqz p0, :cond_10

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-lez v0, :cond_10

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 12
    :goto_8
    if-ltz p1, :cond_e

    const/16 v0, 0xa

    if-lt p1, v0, :cond_13

    :cond_e
    move v0, v1

    .line 17
    :cond_f
    :goto_f
    return v0

    .line 11
    :cond_10
    const/16 v1, 0x15e

    goto :goto_8

    .line 15
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bean/UserData;->ensureChannelPulseWidths(Lcom/isaigu/gymapp/bean/UserData;)V

    .line 16
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    aget v0, v0, p1

    .line 17
    if-gtz v0, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method public static resolveGlobalPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 22
    if-eqz p0, :cond_28

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-lez v0, :cond_28

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 23
    :goto_9
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/bean/UserData;->ensureChannelPulseWidths(Lcom/isaigu/gymapp/bean/UserData;)V

    .line 25
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    array-length v5, v4

    move v3, v2

    move v1, v2

    :goto_19
    if-ge v3, v5, :cond_2b

    aget v2, v4, v3

    .line 26
    if-lez v2, :cond_24

    if-eqz v1, :cond_23

    if-ge v2, v1, :cond_24

    :cond_23
    move v1, v2

    .line 25
    :cond_24
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19

    .line 22
    :cond_28
    const/16 v0, 0x15e

    goto :goto_9

    .line 30
    :cond_2b
    if-lez v1, :cond_2e

    :goto_2d
    return v1

    :cond_2e
    move v1, v0

    goto :goto_2d
.end method
