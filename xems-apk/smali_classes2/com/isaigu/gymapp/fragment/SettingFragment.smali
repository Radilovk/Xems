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
.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x2


# instance fields
.field private changeLogo:Landroid/widget/Button;

.field private channelCalibrationContainer:Landroid/widget/LinearLayout;

.field private chinese:Landroid/widget/Button;

.field private cropImageUri:Landroid/net/Uri;

.field private defaultLogo:Landroid/widget/Button;

.field private english:Landroid/widget/Button;

.field private espanol:Landroid/widget/Button;

.field private french:Landroid/widget/Button;

.field private german:Landroid/widget/Button;

.field private imageUri:Landroid/net/Uri;

.field private italian:Landroid/widget/Button;

.field private lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private logoImage:Landroid/widget/ImageView;

.field private logoImage2:Landroid/widget/ImageView;

.field private logout:Landroid/widget/Button;

.field private originalFile:Ljava/io/File;

.field private poland:Landroid/widget/Button;

.field private portugues:Landroid/widget/Button;

.field private range:Landroid/widget/TextView;

.field private rassia:Landroid/widget/Button;

.field private softwareVersion:Landroid/widget/TextView;

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
    .line 61
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method private handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 152
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 154
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 156
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 159
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method private handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 168
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 170
    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1e

    .line 172
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 175
    :cond_21
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private initChannelPulseRows()V
    .registers 14

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x6

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    .line 241
    :cond_9
    return-void

    .line 186
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/bean/UserData;->ensureChannelPulseWidths(Lcom/isaigu/gymapp/bean/UserData;)V

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    const v0, 0x7f0d00f9

    .line 189
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const v2, 0x7f0d0055

    .line 190
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const v2, 0x7f0d002d

    .line 191
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    const v2, 0x7f0d00fa

    .line 192
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x4

    const v2, 0x7f0d002e

    .line 193
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x5

    const v2, 0x7f0d00d4

    .line 194
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const v0, 0x7f0d00ea

    .line 195
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    const/4 v0, 0x7

    const v2, 0x7f0d00f7

    .line 196
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0x8

    const v2, 0x7f0d005d

    .line 197
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0x9

    const v2, 0x7f0d00f8

    .line 198
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 200
    :goto_7f
    array-length v2, v3

    if-ge v0, v2, :cond_9

    .line 202
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    invoke-virtual {v4, v12, v11, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 206
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    aget-object v2, v3, v0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xdc

    invoke-direct {v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    aget v7, v2, v0

    .line 212
    if-lez v7, :cond_124

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " \u03bcs"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d9
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x64

    invoke-direct {v2, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v8, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/4 v2, 0x0

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-virtual {v8, v2, v9}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FF)V

    .line 218
    if-lez v7, :cond_12c

    int-to-float v2, v7

    :goto_107
    invoke-virtual {v8, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 219
    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$3;

    invoke-direct {v2, p0, v0, v6}, Lcom/isaigu/gymapp/fragment/SettingFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 236
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7f

    .line 212
    :cond_124
    const v2, 0x7f0d0105

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d9

    .line 218
    :cond_12c
    const/high16 v2, 0x43af0000    # 350.0f

    goto :goto_107
.end method

.method private initSet()V
    .registers 13

    .prologue
    const-wide/32 v10, 0xea60

    const v8, 0x7f0d0064

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-nez v0, :cond_7d

    .line 246
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 247
    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    const/high16 v1, 0x43570000    # 215.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v0, :cond_3e

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 252
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 253
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
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_7d} :catch_21e

    .line 258
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 259
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

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 307
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 319
    new-instance v0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v10, v11, v10, v11}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    .line 320
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

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 332
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 333
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 334
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v2, 0x7f0c0058

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 335
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 336
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 338
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 339
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 340
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v2, 0x7f0c0077

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_224

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 362
    :cond_19b
    :goto_19b
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$11;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$12;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$13;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$14;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$15;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$17;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    return-void

    .line 255
    :catch_21e
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7d

    .line 343
    :cond_224
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 345
    :cond_236
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_248

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 347
    :cond_248
    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25a

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 349
    :cond_25a
    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 351
    :cond_26c
    const-string v1, "fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27e

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 353
    :cond_27e
    const-string v1, "pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_290

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 355
    :cond_290
    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a2

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 357
    :cond_2a2
    const-string v1, "it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b4

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b

    .line 359
    :cond_2b4
    const-string v1, "tu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 360
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_19b
.end method

.method private requestWriteSettings()V
    .registers 4

    .prologue
    .line 724
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
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

    .line 727
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 732
    :cond_3d
    :goto_3d
    return-void

    .line 729
    :catch_3e
    move-exception v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
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
    .line 610
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

    .line 611
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/com.isaigu.gymapp25/CropPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 615
    :cond_4c
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 616
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

    .line 617
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
    .line 599
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

    .line 600
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

    .line 601
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 602
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 604
    :cond_4e
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 605
    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 142
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 143
    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 144
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 148
    :cond_e
    :goto_e
    return-void

    .line 145
    :cond_f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 146
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 621
    const/4 v0, -0x1

    if-ne p2, v0, :cond_44

    .line 622
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_4e

    .line 623
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_44

    .line 626
    :try_start_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 627
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    .line 628
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_45

    .line 629
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.isaigu.gymapp25.provider"

    invoke-static {v1, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 633
    :goto_32
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 634
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass20;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 680
    :cond_44
    :goto_44
    return-void

    .line 631
    :cond_45
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_49

    goto :goto_32

    .line 636
    :catch_49
    move-exception v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 643
    :cond_4e
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_b1

    .line 645
    :try_start_52
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 646
    if-nez v0, :cond_a6

    .line 647
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 648
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 649
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 650
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 651
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 652
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 656
    :goto_8d
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 657
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$19;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a0} :catch_a1

    goto :goto_44

    .line 665
    :catch_a1
    move-exception v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 654
    :cond_a6
    :try_start_a6
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b0} :catch_a1

    goto :goto_8d

    .line 670
    :cond_b1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 672
    :try_start_b4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 673
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_cc} :catch_ce

    goto/16 :goto_44

    .line 675
    :catch_ce
    move-exception v0

    .line 676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_44
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 99
    const v0, 0x7f090170

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 100
    const v0, 0x7f090132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f090071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    .line 102
    const v0, 0x7f090098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    .line 103
    const v0, 0x7f09009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    .line 104
    const v0, 0x7f090158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    .line 105
    const v0, 0x7f09013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0900a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    .line 107
    const v0, 0x7f090139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0900ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0900c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0901bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    .line 111
    const v0, 0x7f090069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0900f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0900f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 115
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

    .line 116
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

    .line 118
    :cond_e3
    const v0, 0x7f090180

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f0901aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0901ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 124
    const v0, 0x7f0900f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    .line 125
    const v0, 0x7f090083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    .line 126
    const v0, 0x7f090206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->channelCalibrationContainer:Landroid/widget/LinearLayout;

    .line 127
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initChannelPulseRows()V

    .line 128
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->requestWriteSettings()V

    .line 129
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 130
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 131
    return-object v1
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 717
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 718
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 720
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 136
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V

    .line 137
    return-void
.end method

.method public switchToLanguage(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 558
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 561
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 562
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 568
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 589
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->setLang(Landroid/app/Activity;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 592
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 595
    return-void

    .line 570
    :cond_91
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_60

    .line 572
    :cond_a2
    const-string v0, "es"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_60

    .line 574
    :cond_b3
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_60

    .line 576
    :cond_c4
    const-string v0, "pt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_60

    .line 578
    :cond_d5
    const-string v0, "fr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60

    .line 580
    :cond_e7
    const-string v0, "pl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60

    .line 582
    :cond_f9
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 583
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60

    .line 584
    :cond_10b
    const-string v0, "it"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 585
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60

    .line 586
    :cond_11d
    const-string v0, "tu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_60
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 93
    const v0, 0x7f0b0066

    return v0
.end method
