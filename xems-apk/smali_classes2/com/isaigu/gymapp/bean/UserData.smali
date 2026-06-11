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
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/bean/UserData;
    .registers 2

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_30

    .line 46
    const-class v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/UserData;

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 47
    if-nez v0, :cond_1a

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/UserData;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 50
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 52
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 56
    :cond_30
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-object v0
.end method


# virtual methods
.method public isLogin()Z
    .registers 3

    .line 60
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
