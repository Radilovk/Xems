.class public Lcom/isaigu/gymapp/fragment/SettingFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "SettingFragment.java"


# static fields
.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x2


# instance fields
.field private changeLogo:Landroid/widget/Button;

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

    .line 71
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchToLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Ljava/io/File;

    .line 71
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 71
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCropImageFile(Landroid/content/Context;)Ljava/io/File;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogoPic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "imgNameCrop":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.isaigu.gymapp25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CropPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "pictureDirCrop":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_52

    .line 548
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 550
    :cond_52
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 555
    .local v2, "image":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp image exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 556
    return-object v2
.end method

.method private createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogoPic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "imgNameOri":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/OriPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "pictureDirOri":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 529
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 531
    :cond_4a
    const-string v2, ".png"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 536
    .local v2, "image":Ljava/io/File;
    return-object v2
.end method

.method private handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 168
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 169
    .local v0, "content":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 171
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1e

    .line 173
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 176
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method private handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 184
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 185
    .local v0, "content":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 187
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1e

    .line 189
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 192
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private initSet()V
    .registers 12

    .line 202
    const-string v0, "%"

    const v1, 0x7f0d0064

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-nez v4, :cond_72

    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, "value":I
    add-int/lit8 v5, v4, -0x28

    int-to-float v5, v5

    const/high16 v6, 0x43570000    # 215.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 206
    .local v5, "progress":I
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iput v5, v6, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget v6, v6, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v6, :cond_3c

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iput v3, v6, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 210
    :cond_3c
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    iget v7, v7, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 211
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v10

    iget v10, v10, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_73

    .line 215
    .end local v4    # "value":I
    .end local v5    # "progress":I
    :cond_72
    goto :goto_77

    .line 213
    :catch_73
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_77
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 218
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    iget v7, v7, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 263
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 265
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-static {v1, v4, v5, v6, v7}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    .line 275
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 276
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    const-wide/32 v4, 0xea60

    invoke-static {v1, v4, v5, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime2(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0d0041

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const v3, 0x7f0d005c

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const v3, 0x7f0d0075

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$6;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLang(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "language":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 321
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 322
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 323
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 324
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 325
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 326
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 327
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 328
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v3, 0x7f0c0077

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 330
    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 331
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_230

    .line 332
    :cond_196
    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 333
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_230

    .line 334
    :cond_1a8
    const-string v2, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 335
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_230

    .line 336
    :cond_1ba
    const-string v2, "ru"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 337
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v3, 0x7f0c0057

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 338
    :cond_1cb
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 339
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 340
    :cond_1dc
    const-string v2, "fr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    .line 341
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 342
    :cond_1ed
    const-string v2, "pl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fe

    .line 343
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 344
    :cond_1fe
    const-string v2, "de"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 345
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 346
    :cond_20f
    const-string v2, "it"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 347
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_230

    .line 348
    :cond_220
    const-string v2, "tu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_230

    .line 349
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 353
    :cond_230
    :goto_230
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$9;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$10;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$11;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$12;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$13;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$14;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$15;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$16;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$17;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$19;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$19;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    return-void
.end method

.method private requestWriteSettings()V
    .registers 4

    .line 672
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3b

    .line 673
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 676
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 681
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3b
    goto :goto_40

    .line 679
    :catch_3c
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    return-void
.end method

.method private switchToLanguage(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "restart"    # Z

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 484
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 486
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_fc

    .line 488
    :cond_62
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 489
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_fc

    .line 490
    :cond_74
    const-string v0, "es"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_fc

    .line 492
    :cond_86
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 494
    :cond_97
    const-string v0, "pt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 496
    :cond_a8
    const-string v0, "fr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 498
    :cond_b9
    const-string v0, "pl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 500
    :cond_ca
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 502
    :cond_db
    const-string v0, "it"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 503
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_fc

    .line 504
    :cond_ec
    const-string v0, "tu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 507
    :cond_fc
    :goto_fc
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/LanguageUtils;->setLang(Landroid/app/Activity;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 512
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 518
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 154
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 156
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 157
    .local v0, "event":S
    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    goto :goto_18

    .line 162
    :cond_10
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_18

    .line 159
    :cond_14
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 160
    nop

    .line 165
    :goto_18
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 580
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d8

    .line 581
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_55

    .line 582
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 583
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_53

    .line 585
    :try_start_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 586
    .local v1, "cropPhotoFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, "uri":Landroid/net/Uri;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_37

    .line 589
    nop

    .line 590
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.isaigu.gymapp25.provider"

    .line 589
    invoke-static {v3, v4, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    goto :goto_3c

    .line 594
    :cond_37
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 598
    :goto_3c
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 599
    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$20;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4e} :catch_4f

    .line 624
    .end local v1    # "cropPhotoFile":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_53

    .line 622
    :catch_4f
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    :goto_53
    goto/16 :goto_d8

    :cond_55
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_b8

    .line 628
    :try_start_59
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 629
    .local v0, "bundle":Landroid/net/Uri;
    if-nez v0, :cond_95

    .line 630
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 631
    .local v1, "face":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 632
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 633
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 634
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 636
    .end local v1    # "face":Landroid/graphics/Bitmap;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_9f

    .line 637
    :cond_95
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 640
    :goto_9f
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 641
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$21;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$21;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_b2} :catch_b3

    .end local v0    # "bundle":Landroid/net/Uri;
    goto :goto_b7

    .line 647
    :catch_b3
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b7
    goto :goto_d8

    .line 650
    :cond_b8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d8

    .line 652
    :try_start_bb
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 653
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d3} :catch_d4

    .line 657
    :cond_d3
    goto :goto_d8

    .line 655
    :catch_d4
    move-exception v0

    .line 656
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d8
    :goto_d8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 106
    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    .line 109
    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    .line 110
    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->espanol:Landroid/widget/Button;

    .line 111
    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->rassia:Landroid/widget/Button;

    .line 112
    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->portugues:Landroid/widget/Button;

    .line 113
    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->french:Landroid/widget/Button;

    .line 114
    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->poland:Landroid/widget/Button;

    .line 115
    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->german:Landroid/widget/Button;

    .line 116
    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->italian:Landroid/widget/Button;

    .line 117
    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->turk:Landroid/widget/Button;

    .line 119
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    .line 120
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 123
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 124
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 127
    :cond_e3
    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 135
    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    .line 137
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    .line 139
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->requestWriteSettings()V

    .line 141
    const/16 v1, 0xa

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 142
    const/16 v1, 0x8

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 143
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .line 664
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 665
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 666
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 667
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 148
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 149
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V

    .line 150
    return-void
.end method

.method protected viewId()I
    .registers 2

    .line 97
    const v0, 0x7f0b0066

    return v0
.end method
