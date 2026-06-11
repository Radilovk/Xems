.class public final Lcom/isaigu/gymapp/utils/PulseModeUtil;
.super Ljava/lang/Object;
.source "PulseModeUtil.java"


# static fields
.field public static final PHASE_AEROBIC:I = 0x1

.field public static final PHASE_MUSCLE:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static applyProgramDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 3

    .prologue
    .line 53
    if-nez p0, :cond_3

    .line 67
    :goto_2
    return-void

    .line 56
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-gtz v1, :cond_f

    .line 58
    iget v1, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    iput v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 60
    :cond_f
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-gtz v1, :cond_17

    .line 61
    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 63
    :cond_17
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-gtz v0, :cond_1f

    .line 64
    const/16 v0, 0x15e

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 66
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    goto :goto_2
.end method

.method public static applyTrainProgramDefaults(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3

    .prologue
    .line 70
    if-nez p0, :cond_3

    .line 83
    :cond_2
    :goto_2
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->applyProgramDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->applyProgramDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->applyProgramDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->applyProgramDefaults(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->alternateImpulseMode:Z

    if-nez v0, :cond_2

    .line 80
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/UserData;->alternateImpulseMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->alternateImpulseMode:Z

    goto :goto_2
.end method

.method public static getActivePhaseBean(Lcom/isaigu/gymapp/bean/TrainProgram;Z)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 27
    if-nez p1, :cond_a

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v1

    .line 31
    :cond_b
    :goto_b
    return-object v0

    .line 30
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->resolveSecondaryBean(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 31
    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_b
.end method

.method public static getPhaseDurationSeconds(Lcom/isaigu/gymapp/bean/TrainProgram;Z)I
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 36
    if-nez v0, :cond_6

    .line 37
    const/4 v0, 0x0

    .line 49
    :goto_5
    return v0

    .line 39
    :cond_6
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 40
    if-eqz p1, :cond_11

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_5

    :cond_11
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_5

    .line 42
    :cond_14
    if-eqz p1, :cond_24

    .line 43
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v1, :cond_1d

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_5

    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    goto :goto_5

    .line 45
    :cond_24
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/PulseModeUtil;->resolveSecondaryBean(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_31

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_31

    .line 47
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_5

    .line 49
    :cond_31
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v1, :cond_38

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_5

    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    goto :goto_5
.end method

.method public static isAlternateImpulseMode(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 2

    .prologue
    .line 15
    if-nez p0, :cond_4

    .line 16
    const/4 v0, 0x0

    .line 22
    :goto_3
    return v0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 19
    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->alternateImpulseMode:Z

    if-eqz v0, :cond_e

    .line 20
    const/4 v0, 0x1

    goto :goto_3

    .line 22
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/UserData;->alternateImpulseMode:Z

    goto :goto_3
.end method

.method private static resolveSecondaryBean(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->alternatePhaseType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 89
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_b
.end method
