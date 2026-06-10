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

.field public currentDecreaseStep:I

.field public currentIncreaseStep:I

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
    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStep:I

    .line 34
    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStep:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/bean/UserData;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_30

    .line 40
    const-class v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/UserData;

    .line 41
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 42
    if-nez v0, :cond_1a

    .line 43
    new-instance v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/UserData;-><init>()V

    .line 44
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 45
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 47
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 51
    :cond_30
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-object v0
.end method


# virtual methods
.method public isLogin()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    return v0
.end method
