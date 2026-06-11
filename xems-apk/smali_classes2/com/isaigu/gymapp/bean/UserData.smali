.class public Lcom/isaigu/gymapp/bean/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final bulgarian:Ljava/lang/String; = "bg"

.field public static final chinese:Ljava/lang/String; = "zh"

.field public static final english:Ljava/lang/String; = "en"

.field public static final espanol:Ljava/lang/String; = "es"

.field public static final french:Ljava/lang/String; = "fr"

.field public static final german:Ljava/lang/String; = "de"

.field private static instance:Lcom/isaigu/gymapp/bean/UserData; = null

.field public static final italian:Ljava/lang/String; = "it"

.field public static final poland:Ljava/lang/String; = "pl"

.field public static final portugus:Ljava/lang/String; = "pt"

.field public static final russia:Ljava/lang/String; = "ru"

.field public static final turk:Ljava/lang/String; = "tu"


# instance fields
.field public autoLogin:Z

.field public channelPulseWidthUs:[I

.field public channelStepMultiplier:[F

.field public currentDecreaseStep:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public currentDecreaseStepTenths:I

.field public currentIncreaseStep:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public currentIncreaseStepTenths:I

.field public defaultPulseContinue:I

.field public defaultPulsePause:I

.field public iconPath:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public leftMode:Z

.field public light:I

.field public logoPath:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public rememberPassword:Z

.field public roleName:Ljava/lang/String;

.field public splashPath:Ljava/lang/String;

.field public useTime:J

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    .line 34
    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/bean/UserData;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_35

    .line 46
    const-class v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/UserData;

    .line 47
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 48
    if-nez v0, :cond_1a

    .line 49
    new-instance v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/UserData;-><init>()V

    .line 50
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 51
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 53
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 54
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 56
    :cond_30
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/bean/UserData;->migrateLegacyTrainingSettings(Lcom/isaigu/gymapp/bean/UserData;)V

    .line 58
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-object v0
.end method

.method private static migrateLegacyTrainingSettings(Lcom/isaigu/gymapp/bean/UserData;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 62
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStep:I

    if-lez v0, :cond_f

    .line 63
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStep:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    .line 65
    :cond_f
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    if-gtz v0, :cond_1d

    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStep:I

    if-lez v0, :cond_1d

    .line 66
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStep:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    .line 68
    :cond_1d
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    if-gtz v0, :cond_23

    .line 69
    iput v1, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    .line 71
    :cond_23
    iget v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    if-gtz v0, :cond_29

    .line 72
    iput v1, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    .line 74
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 75
    return-void
.end method


# virtual methods
.method public isLogin()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    return v0
.end method
