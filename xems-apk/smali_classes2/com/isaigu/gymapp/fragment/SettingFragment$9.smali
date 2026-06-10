.class Lcom/isaigu/gymapp/fragment/SettingFragment$9;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .registers 2

    .prologue
    .line 447
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V
    .registers 11

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v0, v0

    .line 452
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43570000    # 215.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 453
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v0, :cond_49

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 459
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

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
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    .line 463
    :goto_82
    return-void

    .line 460
    :catch_83
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82
.end method

.method public onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 3

    .prologue
    .line 467
    return-void
.end method

.method public onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 9

    .prologue
    .line 472
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v0, v0

    .line 473
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43570000    # 215.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 474
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 477
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    .line 480
    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->setActivityBrightness(FLandroid/app/Activity;)V

    .line 481
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 482
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v0, :cond_82

    .line 483
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 485
    :cond_82
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

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

    .line 486
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c2} :catch_c3

    .line 490
    :goto_c2
    return-void

    .line 487
    :catch_c3
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c2
.end method
