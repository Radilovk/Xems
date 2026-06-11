.class public Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;
.super Ljava/lang/Object;
.source "TrainRecordVO.java"


# instance fields
.field public createTime:Ljava/util/Date;

.field public hz:I

.field public id:Ljava/lang/Long;

.field public inputRamp:I

.field public maxBodyStrenth:I

.field public minBodyStrenth:I

.field public outputRamp:I

.field public pulseContinue:I

.field public pulsePause:I

.field public pulseWidth:I

.field public strenth:I

.field public trainName:Ljava/lang/String;

.field public useType:I

.field public userId:Ljava/lang/Long;

.field public workLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iget v0, p0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->useType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 41
    const v0, 0x7f0d0079

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 43
    const v0, 0x7f0d00fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 45
    const v0, 0x7f0d0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_23
    const v0, 0x7f0d0046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
