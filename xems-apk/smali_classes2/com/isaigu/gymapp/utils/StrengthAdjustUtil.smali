.class public final Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;
.super Ljava/lang/Object;
.source "StrengthAdjustUtil.java"


# static fields
.field public static final MAX_STEP_TENTHS:I = 0x32

.field public static final MAX_STRENGTH_TENTHS:I = 0x3e8

.field public static final MIN_STEP_TENTHS:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static adjustChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    .registers 7

    .prologue
    .line 71
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthTenths(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    .line 73
    if-lez v1, :cond_f

    if-ltz p1, :cond_f

    const/16 v0, 0xa

    if-lt p1, v0, :cond_10

    .line 88
    :cond_f
    :goto_f
    return-void

    .line 76
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    aget v0, v0, p1

    .line 77
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1f

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    :cond_1f
    int-to-float v2, p2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 81
    if-nez v0, :cond_2c

    if-eqz p2, :cond_2c

    .line 82
    if-lez p2, :cond_47

    const/4 v0, 0x1

    .line 84
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelRatio(Lcom/isaigu/gymapp/bean/PartStrenthBean;I)F

    move-result v2

    .line 85
    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->clamp(III)I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, p1, v0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->setChannelRatio(Lcom/isaigu/gymapp/bean/PartStrenthBean;IF)V

    goto :goto_f

    .line 82
    :cond_47
    const/4 v0, -0x1

    goto :goto_2c
.end method

.method public static adjustOverallMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 5

    .prologue
    .line 64
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 65
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthTenths(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->clamp(III)I

    move-result v0

    .line 66
    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    .line 67
    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 68
    return-void
.end method

.method private static clamp(FFF)F
    .registers 4

    .prologue
    .line 150
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static clamp(III)I
    .registers 4

    .prologue
    .line 146
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static ensureDefaults()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xa

    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    .line 27
    iget v1, v0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    if-gtz v1, :cond_d

    .line 28
    iput v3, v0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    .line 30
    :cond_d
    iget v1, v0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    if-gtz v1, :cond_13

    .line 31
    iput v3, v0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    .line 33
    :cond_13
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    array-length v1, v1

    if-eq v1, v2, :cond_23

    .line 34
    :cond_1c
    new-array v1, v2, [F

    fill-array-data v1, :array_32

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    .line 36
    :cond_23
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    array-length v1, v1

    if-eq v1, v2, :cond_30

    .line 37
    :cond_2c
    new-array v1, v2, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    .line 39
    :cond_30
    return-void

    .line 34
    nop

    :array_32
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static formatMa(F)Ljava/lang/String;
    .registers 6

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    .line 127
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 128
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    .line 129
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_24
    return-object v0

    :cond_25
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public static getChannelMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)F
    .registers 4

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthTenths(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    .line 56
    if-gtz v0, :cond_8

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_7
    return v0

    .line 59
    :cond_8
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getChannelRatio(Lcom/isaigu/gymapp/bean/PartStrenthBean;I)F

    move-result v1

    .line 60
    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    goto :goto_7
.end method

.method private static getChannelRatio(Lcom/isaigu/gymapp/bean/PartStrenthBean;I)F
    .registers 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->migrateIfNeeded()V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    aget v0, v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getDecreaseStepTenths()I
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    return v0
.end method

.method public static getEffectivePulseWidthUs(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 91
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 92
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-lez v0, :cond_11

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 93
    :goto_9
    if-ltz p1, :cond_f

    const/16 v0, 0xa

    if-lt p1, v0, :cond_14

    :cond_f
    move v0, v1

    .line 97
    :cond_10
    :goto_10
    return v0

    .line 92
    :cond_11
    const/16 v1, 0x15e

    goto :goto_9

    .line 96
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    aget v0, v0, p1

    .line 97
    if-gtz v0, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method public static getIncreaseStepTenths()I
    .registers 1

    .prologue
    .line 16
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 17
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    return v0
.end method

.method public static getPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 3

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getEffectivePulseWidthUs(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v0

    return v0
.end method

.method public static getStrengthMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;)F
    .registers 3

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->getStrengthTenths(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getStrengthTenths(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_e

    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    .line 120
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v0, :cond_19

    .line 121
    new-instance v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 123
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->migrateIfNeeded()V

    .line 124
    return-void
.end method

.method public static resolveGlobalPulseWidthForBle(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-lez v0, :cond_22

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 106
    :goto_7
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 108
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    array-length v5, v4

    move v3, v2

    move v1, v2

    :goto_13
    if-ge v3, v5, :cond_25

    aget v2, v4, v3

    .line 109
    if-lez v2, :cond_1e

    if-eqz v1, :cond_1d

    if-ge v2, v1, :cond_1e

    :cond_1d
    move v1, v2

    .line 108
    :cond_1e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    .line 105
    :cond_22
    const/16 v0, 0x15e

    goto :goto_7

    .line 113
    :cond_25
    if-lez v1, :cond_28

    :goto_27
    return v1

    :cond_28
    move v1, v0

    goto :goto_27
.end method

.method private static setChannelRatio(Lcom/isaigu/gymapp/bean/PartStrenthBean;IF)V
    .registers 7

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 140
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->migrateIfNeeded()V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    mul-float v1, p2, v3

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->clamp(FFF)F

    move-result v1

    aput v1, v0, p1

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v0, p1

    .line 143
    return-void
.end method

.method public static setStrengthMa(Lcom/isaigu/gymapp/bean/ProgramDataBean;F)V
    .registers 6

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 50
    mul-float v0, p1, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    .line 51
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 52
    return-void
.end method
