.class public Lcom/isaigu/gymapp/bean/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
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

.field public language:Ljava/lang/String;

.field public leftMode:Z

.field public light:I

.field public logoPath:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public rememberPassword:Z

.field public roleName:Ljava/lang/String;

.field public useTime:J

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureChannelPulseWidths(Lcom/isaigu/gymapp/bean/UserData;)V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    array-length v0, v0

    if-eq v0, v1, :cond_f

    .line 51
    :cond_b
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    .line 53
    :cond_f
    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/bean/UserData;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_35

    .line 34
    const-class v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/UserData;

    .line 35
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 36
    if-nez v0, :cond_1a

    .line 37
    new-instance v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/UserData;-><init>()V

    .line 38
    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 39
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 41
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 44
    :cond_30
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/bean/UserData;->ensureChannelPulseWidths(Lcom/isaigu/gymapp/bean/UserData;)V

    .line 46
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-object v0
.end method


# virtual methods
.method public isLogin()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    return v0
.end method
