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
.field private alternateImpulseSwitch:Lcom/isaigu/gymapp/widget/SwitchButton;

.field private alternatePhaseAerobicButton:Landroid/widget/Button;

.field private alternatePhaseMuscleButton:Landroid/widget/Button;

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
    .line 65
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateAlternatePhaseButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$802(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$902(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method private ensureTrainingDefaults()V
    .registers 3

    .prologue
    .line 474
    invoke-static {}, Lcom/isaigu/gymapp/utils/StrengthAdjustUtil;->ensureDefaults()V

    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    if-gtz v0, :cond_12

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    .line 478
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    if-gtz v0, :cond_21

    .line 479
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    .line 481
    :cond_21
    return-void
.end method

.method private formatStepMa(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 377
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
    .line 459
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0d00f9

    .line 460
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0d0055

    .line 461
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0d002d

    .line 462
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0d00fa

    .line 463
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0d002e

    .line 464
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0d00d4

    .line 465
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0d00ea

    .line 466
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0d00f7

    .line 467
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0d005d

    .line 468
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0d00f8

    .line 469
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 459
    return-object v0
.end method

.method private handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 197
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 199
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 201
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 204
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method private handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 213
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 215
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 216
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 217
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 220
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method private hideLegacyLanguageButtons()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 228
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

    .line 229
    array-length v2, v1

    :goto_33
    if-ge v0, v2, :cond_3f

    aget-object v3, v1, v0

    .line 230
    if-eqz v3, :cond_3c

    .line 231
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 234
    :cond_3f
    return-void
.end method

.method private initAlternateImpulseControls()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternateImpulseSwitch:Lcom/isaigu/gymapp/widget/SwitchButton;

    if-nez v0, :cond_5

    .line 363
    :cond_4
    :goto_4
    return-void

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternateImpulseSwitch:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/UserData;->alternateImpulseMode:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 335
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateAlternatePhaseButtons()V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternateImpulseSwitch:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method private initChannelCalibrationRows()V
    .registers 14

    .prologue
    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 456
    :cond_4
    return-void

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 385
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getChannelLabels()[Ljava/lang/String;

    move-result-object v2

    .line 386
    const/4 v0, 0x0

    :goto_f
    array-length v1, v2

    if-ge v0, v1, :cond_4

    .line 388
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 389
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 391
    const/16 v1, 0x14

    const/16 v4, 0x8

    const/16 v5, 0x14

    const/16 v6, 0x8

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 392
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 393
    aget-object v1, v2, v0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 395
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xdc

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 397
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

    .line 398
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 399
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x46

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v6, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;)V

    .line 401
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 402
    const/16 v7, 0x10

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 403
    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v1, v7}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 405
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    aget v1, v1, v0

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v1, v7

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 406
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$10;

    invoke-direct {v1, p0, v0, v5}, Lcom/isaigu/gymapp/fragment/SettingFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 423
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    aget v8, v1, v0

    .line 425
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

    .line 426
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 427
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x64

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v9, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;)V

    .line 429
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    const/4 v1, 0x0

    const/high16 v10, 0x43c80000    # 400.0f

    invoke-virtual {v9, v1, v10}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 431
    if-lez v8, :cond_13b

    int-to-float v1, v8

    :goto_110
    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 432
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$11;

    invoke-direct {v1, p0, v0, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 449
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 425
    :cond_133
    const v1, 0x7f0d0104

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_df

    .line 431
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

    .line 484
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initTrainingPreferenceSeekBars()V

    .line 486
    :try_start_b
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-nez v0, :cond_80

    .line 487
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 488
    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    const/high16 v1, 0x43570000    # 215.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v0, :cond_41

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 493
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 494
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

    .line 499
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 500
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

    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$12;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 546
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 548
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 560
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v10, v11, v10, v11}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    .line 561
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

    .line 562
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$14;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 571
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    const-string v1, "bg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 573
    const-string v0, "en"

    .line 575
    :cond_150
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateLanguageSelection(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$15;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    if-eqz v0, :cond_16b

    .line 583
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    :cond_16b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    if-eqz v0, :cond_179

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$17;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_179
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    if-eqz v0, :cond_187

    .line 604
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    :cond_187
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$20;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    return-void

    .line 496
    :catch_1a6
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_80
.end method

.method private initTrainingPreferenceSeekBars()V
    .registers 6

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 237
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->ensureTrainingDefaults()V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_37

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentIncreaseStepTenths:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 260
    :cond_37
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_65

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->currentDecreaseStepTenths:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->formatStepMa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 282
    :cond_65
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initChannelCalibrationRows()V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_a5

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->defaultPulseContinue:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 286
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

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 305
    :cond_a5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    if-eqz v0, :cond_e2

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->defaultPulsePause:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 308
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

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 327
    :cond_e2
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initAlternateImpulseControls()V

    .line 328
    return-void
.end method

.method private requestWriteSettings()V
    .registers 4

    .prologue
    .line 910
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
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

    .line 913
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 918
    :cond_3d
    :goto_3d
    return-void

    .line 915
    :catch_3e
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method private updateAlternatePhaseButtons()V
    .registers 9

    .prologue
    const v3, 0x7f0800c0

    const v2, 0x7f0800bf

    const v4, 0x7f0600be

    const v5, 0x7f060062

    const/4 v0, 0x1

    .line 366
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    if-nez v1, :cond_16

    .line 374
    :cond_15
    :goto_15
    return-void

    .line 369
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->alternatePhaseType:I

    if-eq v1, v0, :cond_4d

    .line 370
    :goto_1e
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    if-eqz v0, :cond_4f

    move v1, v2

    :goto_23
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 371
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v0, :cond_51

    move v1, v4

    :goto_2f
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 372
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    if-eqz v0, :cond_53

    :goto_3a
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 373
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_55

    :goto_45
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_15

    .line 369
    :cond_4d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_4f
    move v1, v3

    .line 370
    goto :goto_23

    :cond_51
    move v1, v5

    .line 371
    goto :goto_2f

    :cond_53
    move v3, v2

    .line 372
    goto :goto_3a

    :cond_55
    move v5, v4

    .line 373
    goto :goto_45
.end method

.method private updateLanguageSelection(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 747
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x7f0c0010

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 749
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    if-eqz v0, :cond_40

    .line 750
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const v0, 0x7f0800bf

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 751
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

    .line 753
    :cond_40
    return-void

    .line 747
    :cond_41
    const v0, 0x7f0c0011

    goto :goto_11

    .line 750
    :cond_45
    const v0, 0x7f0800c0

    goto :goto_25

    .line 751
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
    .line 781
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

    .line 782
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

    const-string v3, "com.isaigu.gymapp25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/CropPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_58

    .line 784
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 786
    :cond_58
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 787
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

    .line 788
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
    .line 770
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

    .line 771
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

    .line 772
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 773
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 775
    :cond_4e
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 776
    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 187
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 188
    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 189
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 193
    :cond_e
    :goto_e
    return-void

    .line 190
    :cond_f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 191
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/16 v3, 0x3ed

    const/16 v2, 0x3ec

    .line 793
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4b

    .line 794
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_f

    if-eq p1, v2, :cond_f

    if-ne p1, v3, :cond_b4

    .line 795
    :cond_f
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_4b

    .line 798
    if-ne p1, v2, :cond_4c

    .line 799
    :try_start_1f
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    .line 800
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 802
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

    .line 868
    :cond_4b
    :goto_4b
    return-void

    .line 806
    :cond_4c
    if-ne p1, v3, :cond_80

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 810
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

    .line 824
    :catch_7b
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 814
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 815
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    .line 816
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_b0

    .line 817
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.isaigu.gymapp25.provider"

    invoke-static {v1, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 821
    :goto_9d
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 822
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_4b

    .line 819
    :cond_b0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b3} :catch_7b

    goto :goto_9d

    .line 831
    :cond_b4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_119

    .line 833
    :try_start_b8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 834
    if-nez v0, :cond_10e

    .line 835
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 836
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 837
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 838
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 839
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 840
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 844
    :goto_f3
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$21;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$21;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_106} :catch_108

    goto/16 :goto_4b

    .line 853
    :catch_108
    move-exception v0

    .line 854
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b

    .line 842
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

    .line 858
    :cond_119
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4b

    .line 860
    :try_start_11c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 861
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_134} :catch_136

    goto/16 :goto_4b

    .line 863
    :catch_136
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 121
    const v0, 0x7f090170

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 122
    const v0, 0x7f090132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    .line 124
    const v0, 0x7f090098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    .line 125
    const v0, 0x7f09009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    .line 126
    const v0, 0x7f090158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    .line 127
    const v0, 0x7f09013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    .line 128
    const v0, 0x7f0900a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    .line 129
    const v0, 0x7f090139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    .line 130
    const v0, 0x7f0900ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    .line 131
    const v0, 0x7f0900c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    .line 132
    const v0, 0x7f0901bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    .line 133
    const v0, 0x7f090203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->bulgarian:Landroid/widget/Button;

    .line 134
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->hideLegacyLanguageButtons()V

    .line 135
    const v0, 0x7f090069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    .line 136
    const v0, 0x7f090204

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeIcon:Landroid/widget/Button;

    .line 137
    const v0, 0x7f090205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeSplash:Landroid/widget/Button;

    .line 138
    const v0, 0x7f0900f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0900f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f09020b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f090211

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f090209

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 143
    const v0, 0x7f090207

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 144
    const v0, 0x7f09020a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentIncreaseValue:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f090208

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->currentDecreaseValue:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f09020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 147
    const v0, 0x7f09020f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 148
    const v0, 0x7f09020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulseContinueValue:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f090210

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->pulsePauseValue:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f090206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f090212

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternateImpulseSwitch:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 152
    const v0, 0x7f090214

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseMuscleButton:Landroid/widget/Button;

    .line 153
    const v0, 0x7f090213

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->alternatePhaseAerobicButton:Landroid/widget/Button;

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a1

    .line 155
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

    .line 156
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

    .line 158
    :cond_1a1
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c8

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->iconPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c8

    .line 159
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

    .line 161
    :cond_1c8
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->splashPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ef

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->splashPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1ef

    .line 162
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

    .line 164
    :cond_1ef
    const v0, 0x7f090180

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v0, 0x7f0901aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f090195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 170
    const v0, 0x7f0900f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    .line 171
    const v0, 0x7f090083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    .line 172
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->requestWriteSettings()V

    .line 173
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 174
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 175
    return-object v1
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 903
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 904
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 905
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 906
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 181
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V

    .line 182
    return-void
.end method

.method public switchToLanguage(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 756
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 757
    const-string p1, "en"

    .line 759
    :cond_12
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->updateLanguageSelection(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->setLang(Landroid/app/Activity;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 764
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 765
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 766
    return-void
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 115
    const v0, 0x7f0b0066

    return v0
.end method
