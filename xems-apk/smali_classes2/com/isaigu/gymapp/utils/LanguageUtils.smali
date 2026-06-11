.class public Lcom/isaigu/gymapp/utils/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChange(Landroid/app/Activity;)V
    .registers 1
    .param p0, "context"    # Landroid/app/Activity;

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->changeAppLanguage(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 94
    return-void
.end method

.method public static applyChangeWithoutRestart(Landroid/app/Activity;)V
    .registers 1
    .param p0, "context"    # Landroid/app/Activity;

    .line 137
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->changeAppLanguage(Landroid/app/Activity;)V

    .line 139
    return-void
.end method

.method public static changeAppLanguage(Landroid/app/Activity;)V
    .registers 6
    .param p0, "context"    # Landroid/app/Activity;

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 129
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 131
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 132
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lllll"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 134
    return-void
.end method

.method public static changeLanguage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "language"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 34
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public static getLang(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .line 27
    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "language"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "lanAtr":Ljava/lang/String;
    return-object v1
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p0, "language"    # Ljava/lang/String;

    .line 38
    const-string v0, "lllll"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 40
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    return-object v0

    .line 42
    :cond_10
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 43
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ES"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 45
    :cond_20
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 46
    new-instance v1, Ljava/util/Locale;

    const-string v2, "RU"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 48
    :cond_30
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 49
    new-instance v1, Ljava/util/Locale;

    const-string v2, "PT"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_40
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 52
    new-instance v1, Ljava/util/Locale;

    const-string v2, "FR"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_50
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 55
    new-instance v1, Ljava/util/Locale;

    const-string v2, "PL"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_60
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 58
    new-instance v1, Ljava/util/Locale;

    const-string v2, "DE"

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 60
    :cond_70
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 61
    sget-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    return-object v0

    .line 63
    :cond_7b
    const-string v0, "tu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 64
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 66
    :cond_89
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public static setLang(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "language"    # Ljava/lang/String;

    .line 20
    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 22
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "language"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method public static wrapContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 72
    .local v0, "newLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 75
    .local v2, "configuration":Landroid/content/res/Configuration;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_31

    .line 77
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 78
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 79
    .local v3, "localeList":Landroid/os/LocaleList;
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 81
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .end local v3    # "localeList":Landroid/os/LocaleList;
    goto :goto_3f

    .line 82
    :cond_31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3f

    .line 84
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    goto :goto_40

    .line 82
    :cond_3f
    :goto_3f
    nop

    .line 87
    :goto_40
    return-object p0
.end method
