.class public Lcom/isaigu/gymapp/fragment/SettingFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;,
        Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;,
        Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_PICK_ICON:I = 0x3ec

.field private static final REQUEST_CODE_PICK_SPLASH:I = 0x3ed

.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x2


# instance fields
.field private bulgarian:Landroid/widget/Button;

.field private changeIcon:Landroid/widget/Button;

.field private changeLogo:Landroid/widget/Button;

.field private changeSplash:Landroid/widget/Button;

.field private channelCalibrationContainer:Landroid/widget/LinearLayout;

.field private chinese:Landroid/widget/Button;

.field private cropImageUri:Landroid/net/Uri;

.field private currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private currentDecreaseValue:Landroid/widget/TextView;

.field private currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private currentIncreaseValue:Landroid/widget/TextView;

.field private defaultLogo:Landroid/widget/Button;

.field private english:Landroid/widget/Button;

.field private espanol:Landroid/widget/Button;

.field private french:Landroid/widget/Button;

.field private german:Landroid/widget/Button;

.field private iconPreview:Landroid/widget/ImageView;

.field private imageUri:Landroid/net/Uri;

.field private italian:Landroid/widget/Button;

.field private lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private logoImage:Landroid/widget/ImageView;

.field private logoImage2:Landroid/widget/ImageView;

.field private logout:Landroid/widget/Button;

.field private originalFile:Ljava/io/File;

.field private poland:Landroid/widget/Button;

.field private portugues:Landroid/widget/Button;

.field private pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private pulseContinueValue:Landroid/widget/TextView;

.field private pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private pulsePauseValue:Landroid/widget/TextView;

.field private range:Landroid/widget/TextView;

.field private rassia:Landroid/widget/Button;

.field private softwareVersion:Landroid/widget/TextView;

.field private splashPreview:Landroid/widget/ImageView;

.field private switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

.field private time:Landroid/widget/TextView;

.field private timelength:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private turk:Landroid/widget/Button;

.field private useTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$702(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$802(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    return-object v0
.end method

.method private ensureTrainingDefaults()V
    .registers 3

    .prologue
    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    if-gtz v0, :cond_12

    .line 422
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    .line 424
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    if-gtz v0, :cond_21

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    .line 427
    :cond_21
    return-void
.end method

.method private formatStepMa(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->formatMa(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChannelLabels()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 405
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0d00f9

    .line 406
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0d0055

    .line 407
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0d002d

    .line 408
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0d00fa

    .line 409
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0d002e

    .line 410
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0d00d4

    .line 411
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0d00ea

    .line 412
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0d00f7

    .line 413
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0d005d

    .line 414
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0d00f8

    .line 415
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 405
    return-object v0
.end method

.method private handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 190
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 192
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 194
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 197
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 206
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 208
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 209
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 210
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 213
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method private hideLegacyLanguageButtons()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 221
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/widget/Button;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    aput-object v2, v1, v4

    .line 222
    array-length v2, v1

    :goto_33
    if-ge v0, v2, :cond_3f

    aget-object v3, v1, v0

    .line 223
    if-eqz v3, :cond_3c

    .line 224
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 227
    :cond_3f
    return-void
.end method

.method private initChannelCalibrationRows()V
    .registers 14

    .prologue
    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 402
    :cond_4
    return-void

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 331
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getChannelLabels()[Ljava/lang/String;

    move-result-object v2

    .line 332
    const/4 v0, 0x0

    :goto_f
    array-length v1, v2

    if-ge v0, v1, :cond_4

    .line 334
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 336
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 337
    const/16 v1, 0x14

    const/16 v4, 0x8

    const/16 v5, 0x14

    const/16 v6, 0x8

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 338
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 339
    aget-object v1, v2, v0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xdc

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 343
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1fx"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v9

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    aget v9, v9, v0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x46

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v6, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;)V

    .line 347
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 348
    const/16 v7, 0x10

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 349
    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v1, v7}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    aget v1, v1, v0

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v1, v7

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 352
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v1, p0, v0, v5}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 369
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    aget v8, v1, v0

    .line 371
    if-lez v8, :cond_133

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " us"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_df
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 373
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x64

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v9, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;)V

    .line 375
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    const/4 v1, 0x0

    const/high16 v10, 0x43c80000    # 400.0f

    invoke-virtual {v9, v1, v10}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 377
    if-lez v8, :cond_13b

    int-to-float v1, v8

    :goto_110
    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 378
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v1, p0, v0, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 395
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 371
    :cond_133
    const v1, 0x7f0d0105

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_df

    .line 377
    :cond_13b
    const/high16 v1, 0x43af0000    # 350.0f

    goto :goto_110
.end method

.method private initSet()V
    .registers 13

    .prologue
    const-wide/32 v10, 0xea60

    const v8, 0x7f0d0064

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initTrainingPreferenceSeekBars()V

    .line 432
    :try_start_b
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-nez v0, :cond_80

    .line 433
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 434
    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    const/high16 v1, 0x43570000    # 215.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 435
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v0, :cond_41

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 439
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0064

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_80} :catch_1a6

    .line 445
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 492
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 494
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 506
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v10, v11, v10, v11}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    .line 507
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime2(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0d0041

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0d005c

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const v4, 0x7f0d0075

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$11;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 517
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 518
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    const-string v1, "bg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 519
    const-string v0, "bg"

    .line 521
    :cond_150
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateLanguageSelection(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$12;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    if-eqz v0, :cond_16b

    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$13;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    :cond_16b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    if-eqz v0, :cond_179

    .line 537
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$14;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :cond_179
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    if-eqz v0, :cond_187

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$15;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    :cond_187
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$17;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void

    .line 442
    :catch_1a6
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_80
.end method

.method private initTrainingPreferenceSeekBars()V
    .registers 6

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 230
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->ensureTrainingDefaults()V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_37

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 253
    :cond_37
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_65

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 275
    :cond_65
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initChannelCalibrationRows()V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_a5

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 298
    :cond_a5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_e2

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 320
    :cond_e2
    return-void
.end method

.method private requestWriteSettings()V
    .registers 4

    .prologue
    .line 856
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 859
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 864
    :cond_3d
    :goto_3d
    return-void

    .line 861
    :catch_3e
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method private updateLanguageSelection(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 692
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 693
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x7f0c0010

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 695
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    if-eqz v0, :cond_40

    .line 696
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const v0, 0x7f0800bf

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 697
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const v0, 0x7f0600be

    :goto_39
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 699
    :cond_40
    return-void

    .line 693
    :cond_41
    const v0, 0x7f0c0011

    goto :goto_11

    .line 696
    :cond_45
    const v0, 0x7f0800c0

    goto :goto_25

    .line 697
    :cond_49
    const v0, 0x7f060062

    goto :goto_39
.end method


# virtual methods
.method public createCropImageFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogoPic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.isaigu.gymapp25.custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/CropPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_58

    .line 730
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 732
    :cond_58
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp image exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 734
    return-object v0
.end method

.method public createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogoPic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/OriPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 719
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 721
    :cond_4e
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 722
    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 180
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 181
    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 182
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 186
    :cond_e
    :goto_e
    return-void

    .line 183
    :cond_f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 184
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/16 v3, 0x3ed

    const/16 v2, 0x3ec

    .line 739
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4b

    .line 740
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_f

    if-eq p1, v2, :cond_f

    if-ne p1, v3, :cond_b4

    .line 741
    :cond_f
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_4b

    .line 744
    if-ne p1, v2, :cond_4c

    .line 745
    :try_start_1f
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    .line 746
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 748
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 814
    :cond_4b
    :goto_4b
    return-void

    .line 752
    :cond_4c
    if-ne p1, v3, :cond_80

    .line 753
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    .line 754
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 756
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_7a} :catch_7b

    goto :goto_4b

    .line 770
    :catch_7b
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 760
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 761
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    .line 762
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_b0

    .line 763
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.isaigu.gymapp25.custom.provider"

    invoke-static {v1, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 767
    :goto_9d
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 768
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_4b

    .line 765
    :cond_b0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b3} :catch_7b

    goto :goto_9d

    .line 777
    :cond_b4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_119

    .line 779
    :try_start_b8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 780
    if-nez v0, :cond_10e

    .line 781
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 782
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 783
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 784
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 785
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 786
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 790
    :goto_f3
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_106} :catch_108

    goto/16 :goto_4b

    .line 799
    :catch_108
    move-exception v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b

    .line 788
    :cond_10e
    :try_start_10e
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_118} :catch_108

    goto :goto_f3

    .line 804
    :cond_119
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4b

    .line 806
    :try_start_11c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 807
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_134} :catch_136

    goto/16 :goto_4b

    .line 809
    :catch_136
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 117
    const v0, 0x7f090170

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 118
    const v0, 0x7f090132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f090071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    .line 120
    const v0, 0x7f090098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    .line 121
    const v0, 0x7f09009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    .line 122
    const v0, 0x7f090158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    .line 123
    const v0, 0x7f09013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    .line 124
    const v0, 0x7f0900a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    .line 125
    const v0, 0x7f090139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    .line 126
    const v0, 0x7f0900ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0900c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    .line 128
    const v0, 0x7f0901bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    .line 129
    const v0, 0x7f090204

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    .line 130
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->hideLegacyLanguageButtons()V

    .line 131
    const v0, 0x7f090069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    .line 132
    const v0, 0x7f090205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    .line 133
    const v0, 0x7f090206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    .line 134
    const v0, 0x7f0900f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0900f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f090207

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f090208

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f090209

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 139
    const v0, 0x7f09020a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 140
    const v0, 0x7f09020b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f09020c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f09020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 143
    const v0, 0x7f09020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 144
    const v0, 0x7f09020f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueValue:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f090210

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseValue:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f090211

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_180

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 151
    :cond_180
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a7

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a7

    .line 152
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 154
    :cond_1a7
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ce

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1ce

    .line 155
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 157
    :cond_1ce
    const v0, 0x7f090180

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0901aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f090195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 163
    const v0, 0x7f0900f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    .line 164
    const v0, 0x7f090083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    .line 165
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->requestWriteSettings()V

    .line 166
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 167
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 168
    return-object v1
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 849
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 850
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 852
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 174
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V

    .line 175
    return-void
.end method

.method public switchToLanguage(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 702
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 703
    const-string p1, "bg"

    .line 705
    :cond_12
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateLanguageSelection(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->setLang(Landroid/app/Activity;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 709
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 710
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 711
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 712
    return-void
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 111
    const v0, 0x7f0b0066

    return v0
.end method
