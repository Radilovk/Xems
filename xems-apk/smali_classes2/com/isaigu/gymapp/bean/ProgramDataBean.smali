.class public Lcom/isaigu/gymapp/bean/ProgramDataBean;
.super Ljava/lang/Object;
.source "ProgramDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hz:I

.field public inputRamp:I

.field public massageCycle:I

.field public outputRamp:I

.field public pulseContinue:I

.field public pulsePause:I

.field public pulseWidth:I

.field public strenth:I

.field public strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

.field public strenthTenths:I

.field public workLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 21
    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthTenths:I

    .line 22
    return-void
.end method

.method public syncStrengthFields()V
    .registers 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->migrate(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 26
    return-void
.end method
