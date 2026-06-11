.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;
.super Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
.source "JZVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;
    }
.end annotation


# static fields
.field protected static DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

.field public static LAST_GET_BATTERYLEVEL_PERCENT:I

.field public static LAST_GET_BATTERYLEVEL_TIME:J


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field private battertReceiver:Landroid/content/BroadcastReceiver;

.field public batteryLevel:Landroid/widget/ImageView;

.field public batteryTimeLayout:Landroid/widget/LinearLayout;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public clarity:Landroid/widget/TextView;

.field public clarityPopWindow:Landroid/widget/PopupWindow;

.field public close:Landroid/widget/ImageView;

.field downX:F

.field downY:F

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightnessDialog:Landroid/app/Dialog;

.field protected mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogBrightnessTextView:Landroid/widget/TextView;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeImageView:Landroid/widget/ImageView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogVolumeTextView:Landroid/widget/TextView;

.field protected mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

.field protected mProgressDialog:Landroid/app/Dialog;

.field public mRetryBtn:Landroid/widget/TextView;

.field public mRetryLayout:Landroid/widget/LinearLayout;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field public replayTextView:Landroid/widget/TextView;

.field public thumbImageView:Landroid/widget/ImageView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public videoCurrentTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 75
    const/16 v0, 0x46

    sput v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public cancelDismissControlViewTimer()V
    .registers 2

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 877
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 879
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    if-eqz v0, :cond_e

    .line 880
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;->cancel()Z

    .line 883
    :cond_e
    return-void
.end method

.method public changeStartButtonSize(I)V
    .registers 4
    .param p1, "size"    # I

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    return-void
.end method

.method public changeUiToComplete()V
    .registers 9

    .line 682
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 695
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 697
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 690
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 692
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 693
    goto :goto_3b

    .line 685
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 687
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 688
    nop

    .line 701
    :goto_3b
    return-void
.end method

.method public changeUiToError()V
    .registers 9

    .line 704
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 717
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 719
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 712
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 714
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 715
    goto :goto_3b

    .line 707
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 709
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 710
    nop

    .line 723
    :goto_3b
    return-void
.end method

.method public changeUiToNormal()V
    .registers 9

    .line 552
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 565
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 567
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 560
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 562
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 563
    goto :goto_3b

    .line 555
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 557
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 558
    nop

    .line 575
    :goto_3b
    return-void
.end method

.method public changeUiToPauseClear()V
    .registers 9

    .line 662
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_35

    .line 673
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 675
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_35

    .line 669
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 671
    goto :goto_35

    .line 665
    :cond_29
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 667
    nop

    .line 679
    :goto_35
    return-void
.end method

.method public changeUiToPauseShow()V
    .registers 9

    .line 641
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 654
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 656
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 649
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 651
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 652
    goto :goto_3b

    .line 644
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 646
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 647
    nop

    .line 659
    :goto_3b
    return-void
.end method

.method public changeUiToPlayingClear()V
    .registers 9

    .line 622
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_32

    .line 633
    :cond_e
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_32

    .line 629
    :cond_1a
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 631
    goto :goto_32

    .line 625
    :cond_26
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 627
    nop

    .line 638
    :goto_32
    return-void
.end method

.method public changeUiToPlayingShow()V
    .registers 9

    .line 600
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 613
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 615
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 608
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 610
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 611
    goto :goto_3b

    .line 603
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 605
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 606
    nop

    .line 619
    :goto_3b
    return-void
.end method

.method public changeUiToPreparing()V
    .registers 9

    .line 578
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_3b

    .line 591
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 593
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_3b

    .line 586
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 588
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 589
    goto :goto_3b

    .line 581
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 583
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 584
    nop

    .line 597
    :goto_3b
    return-void
.end method

.method public createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;
    .registers 6
    .param p1, "localView"    # Landroid/view/View;

    .line 855
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 856
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 858
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 859
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 860
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 861
    const/4 v2, -0x2

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 862
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 863
    .local v2, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 864
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 865
    return-object v0
.end method

.method public dismissBrightnessDialog()V
    .registers 2

    .line 848
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 849
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 850
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 852
    :cond_a
    return-void
.end method

.method public dismissProgressDialog()V
    .registers 2

    .line 782
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissProgressDialog()V

    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 784
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 786
    :cond_a
    return-void
.end method

.method public dismissVolumeDialog()V
    .registers 2

    .line 818
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissVolumeDialog()V

    .line 819
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 820
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 822
    :cond_a
    return-void
.end method

.method public dissmissControlView()V
    .registers 3

    .line 901
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 904
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_16
    return-void
.end method

.method public getLayoutId()I
    .registers 2

    .line 189
    const v0, 0x7f0b003b

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 102
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    .line 104
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 108
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingShow()V

    .line 128
    return-void
.end method

.method public onAutoCompletion()V
    .registers 1

    .line 887
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAutoCompletion()V

    .line 888
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 889
    return-void
.end method

.method public onCLickUiToggleToClear()V
    .registers 3

    .line 509
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 511
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    goto :goto_43

    .line 514
    :cond_11
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 516
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_43

    .line 519
    :cond_22
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_33

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 521
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_43

    .line 524
    :cond_33
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_43

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 526
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToComplete()V

    .line 530
    :cond_43
    :goto_43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .line 286
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onClick(Landroid/view/View;)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 288
    .local v0, "i":I
    const-string v1, "/"

    const-string v2, "file"

    const v3, 0x7f0d007f

    const/4 v4, 0x0

    const v5, 0x7f0901a9

    if-ne v0, v5, :cond_85

    .line 289
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_23

    goto :goto_71

    .line 293
    :cond_23
    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    if-nez v3, :cond_67

    .line 294
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    .line 295
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 296
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5d

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_5d

    .line 297
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->showWifiDialog()V

    .line 298
    return-void

    .line 300
    :cond_5d
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startVideo()V

    goto/16 :goto_1c9

    .line 302
    :cond_67
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1c9

    .line 303
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickUiToggle()V

    goto/16 :goto_1c9

    .line 290
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    return-void

    .line 305
    :cond_85
    const v5, 0x7f090191

    if-ne v0, v5, :cond_8f

    .line 306
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    goto/16 :goto_1c9

    .line 307
    :cond_8f
    const v5, 0x7f090046

    if-ne v0, v5, :cond_99

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    goto/16 :goto_1c9

    .line 309
    :cond_99
    const v5, 0x7f090047

    const/4 v6, 0x1

    if-ne v0, v5, :cond_b1

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v1, v6, :cond_ac

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->quitFullscreenOrTinyWindow()V

    goto/16 :goto_1c9

    .line 313
    :cond_ac
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    goto/16 :goto_1c9

    .line 315
    :cond_b1
    const v5, 0x7f090075

    if-ne v0, v5, :cond_142

    .line 316
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 318
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 320
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;

    invoke-direct {v5, p0, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;Landroid/widget/LinearLayout;)V

    .line 338
    .local v5, "mQualityListener":Landroid/view/View$OnClickListener;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d2
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    aget-object v8, v8, v4

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_111

    .line 339
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b003a

    invoke-static {v9, v10, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 341
    .local v9, "clarityItem":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v2, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 344
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget v10, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    if-ne v7, v10, :cond_10e

    .line 346
    const-string v10, "#fff85959"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "clarityItem":Landroid/widget/TextView;
    :cond_10e
    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    .line 350
    .end local v7    # "j":I
    :cond_111
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v3, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    .line 351
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 352
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 353
    invoke-virtual {v2, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 354
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    const/16 v9, -0x28

    const/16 v10, 0x2e

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 355
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "mQualityListener":Landroid/view/View$OnClickListener;
    goto/16 :goto_1c9

    :cond_142
    const v5, 0x7f090152

    if-ne v0, v5, :cond_1bd

    .line 356
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v5, :cond_1a9

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_156

    goto :goto_1a9

    .line 360
    :cond_156
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18c

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    .line 361
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18c

    .line 362
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18c

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_18c

    .line 363
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->showWifiDialog()V

    .line 364
    return-void

    .line 366
    :cond_18c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->initTextureView()V

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->addTextureView()V

    .line 368
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setDataSource([Ljava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setCurrentDataSource(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onStatePreparing()V

    .line 371
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    goto :goto_1c9

    .line 357
    :cond_1a9
    :goto_1a9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 358
    return-void

    .line 372
    :cond_1bd
    const v1, 0x7f090078

    if-ne v0, v1, :cond_1c8

    .line 373
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->enlarge:Z

    .line 378
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickClose()V

    goto :goto_1c9

    .line 379
    :cond_1c8
    nop

    .line 398
    :cond_1c9
    :goto_1c9
    return-void
.end method

.method protected onClickClose()V
    .registers 1

    .line 402
    return-void
.end method

.method public onClickUiToggle()V
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 456
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto :goto_4d

    .line 461
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    .line 463
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_4d

    .line 465
    :cond_35
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingShow()V

    goto :goto_4d

    .line 467
    :cond_39
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4d

    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4a

    .line 469
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_4d

    .line 471
    :cond_4a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseShow()V

    .line 474
    :cond_4d
    :goto_4d
    return-void
.end method

.method public onCompletion()V
    .registers 2

    .line 893
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onCompletion()V

    .line 894
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    .line 896
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 898
    :cond_d
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 435
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 436
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 437
    return-void
.end method

.method public onStateAutoComplete()V
    .registers 3

    .line 232
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateAutoComplete()V

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToComplete()V

    .line 234
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    return-void
.end method

.method public onStateError()V
    .registers 1

    .line 226
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateError()V

    .line 227
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToError()V

    .line 228
    return-void
.end method

.method public onStateNormal()V
    .registers 1

    .line 194
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 195
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToNormal()V

    .line 196
    return-void
.end method

.method public onStatePause()V
    .registers 1

    .line 219
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseShow()V

    .line 221
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 222
    return-void
.end method

.method public onStatePlaying()V
    .registers 1

    .line 213
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    .line 214
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    .line 215
    return-void
.end method

.method public onStatePreparing()V
    .registers 1

    .line 200
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparing()V

    .line 201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    .line 202
    return-void
.end method

.method public onStatePreparingChangingUrl(IJ)V
    .registers 6
    .param p1, "urlMapIndex"    # I
    .param p2, "seekToInAdvance"    # J

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparingChangingUrl(IJ)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 441
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 447
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 448
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 241
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 242
    .local v1, "id":I
    const/4 v2, 0x1

    const v3, 0x7f090191

    if-ne v1, v3, :cond_77

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_69

    if-eq v3, v2, :cond_14

    goto :goto_76

    .line 251
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 252
    .local v2, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 253
    .local v3, "y":F
    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downX:F

    sub-float v4, v2, v4

    .line 254
    .local v4, "deltaX":F
    iget v5, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downY:F

    sub-float v5, v3, v5

    .line 255
    .local v5, "deltaY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 256
    .local v6, "absDeltaX":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 257
    .local v7, "absDeltaY":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 258
    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangePosition:Z

    if-eqz v8, :cond_4e

    .line 259
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getDuration()J

    move-result-wide v8

    .line 260
    .local v8, "duration":J
    iget-wide v10, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mSeekTimePosition:J

    const-wide/16 v12, 0x64

    mul-long v10, v10, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-nez v14, :cond_46

    const-wide/16 v12, 0x1

    goto :goto_47

    :cond_46
    move-wide v12, v8

    :goto_47
    div-long/2addr v10, v12

    long-to-int v11, v10

    .line 261
    .local v11, "progress":I
    iget-object v10, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    .end local v8    # "duration":J
    .end local v11    # "progress":I
    :cond_4e
    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangePosition:Z

    if-nez v8, :cond_76

    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangeVolume:Z

    if-nez v8, :cond_76

    .line 264
    const/16 v8, 0x66

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    .line 265
    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v9, v6, v8

    if-gez v9, :cond_76

    cmpg-float v8, v7, v8

    if-gez v8, :cond_76

    .line 266
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickUiToggle()V

    goto :goto_76

    .line 245
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "absDeltaX":F
    .end local v7    # "absDeltaY":F
    :cond_69
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downX:F

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downY:F

    .line 247
    nop

    .line 269
    :cond_76
    :goto_76
    goto :goto_8c

    .line 271
    :cond_77
    const v3, 0x7f09004f

    if-ne v1, v3, :cond_8c

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_89

    if-eq v3, v2, :cond_85

    goto :goto_8c

    .line 277
    :cond_85
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_8c

    .line 274
    :cond_89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 281
    :cond_8c
    :goto_8c
    invoke-super/range {p0 .. p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public resetProgressAndTime()V
    .registers 3

    .line 546
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->resetProgressAndTime()V

    .line 547
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 549
    return-void
.end method

.method public setAllControlsVisiblity(IIIIIII)V
    .registers 9
    .param p1, "topCon"    # I
    .param p2, "bottomCon"    # I
    .param p3, "startBtn"    # I
    .param p4, "loadingPro"    # I
    .param p5, "thumbImg"    # I
    .param p6, "bottomPro"    # I
    .param p7, "retryLayout"    # I

    .line 727
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 734
    return-void
.end method

.method public setBatteryLevel()V
    .registers 4

    .line 492
    sget v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    .line 493
    .local v0, "percent":I
    const/16 v1, 0xf

    if-ge v0, v1, :cond_f

    .line 494
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_59

    .line 495
    :cond_f
    const/16 v2, 0x28

    if-lt v0, v1, :cond_1e

    if-ge v0, v2, :cond_1e

    .line 496
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_59

    .line 497
    :cond_1e
    const/16 v1, 0x3c

    if-lt v0, v2, :cond_2d

    if-ge v0, v1, :cond_2d

    .line 498
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_59

    .line 499
    :cond_2d
    const/16 v2, 0x50

    if-lt v0, v1, :cond_3c

    if-ge v0, v2, :cond_3c

    .line 500
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_59

    .line 501
    :cond_3c
    const/16 v1, 0x5f

    if-lt v0, v2, :cond_4b

    if-ge v0, v1, :cond_4b

    .line 502
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_59

    .line 503
    :cond_4b
    if-lt v0, v1, :cond_59

    const/16 v1, 0x64

    if-gt v0, v1, :cond_59

    .line 504
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 506
    :cond_59
    :goto_59
    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3
    .param p1, "bufferProgress"    # I

    .line 540
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setBufferProgress(I)V

    .line 541
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 542
    :cond_a
    return-void
.end method

.method public setProgressAndText(IJJ)V
    .registers 7
    .param p1, "progress"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .line 534
    invoke-super/range {p0 .. p5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setProgressAndText(IJJ)V

    .line 535
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 536
    :cond_a
    return-void
.end method

.method public setSystemTimeAndBattery()V
    .registers 8

    .line 477
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "dateFormater":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 479
    .local v1, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_39

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 482
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3c

    .line 487
    :cond_39
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setBatteryLevel()V

    .line 489
    :goto_3c
    return-void
.end method

.method public varargs setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V
    .registers 19
    .param p1, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p2, "defaultUrlMapIndex"    # I
    .param p3, "screen"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 131
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p4

    invoke-super/range {p0 .. p4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 132
    array-length v0, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    aget-object v1, v10, v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_16
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x7f0c0033

    const/4 v12, 0x4

    const/16 v13, 0x8

    if-ne v0, v1, :cond_66

    .line 134
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    aget-object v0, v9, v11

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_46

    .line 139
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    .line 141
    :cond_46
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget v1, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeStartButtonSize(I)V

    goto :goto_d7

    .line 145
    :cond_66
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_a4

    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-ne v0, v2, :cond_6f

    goto :goto_a4

    .line 155
    :cond_6f
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d7

    .line 157
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 160
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_d7

    .line 147
    :cond_a4
    :goto_a4
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeStartButtonSize(I)V

    .line 151
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 168
    :cond_d7
    :goto_d7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 171
    iget-boolean v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tmp_test_back:Z

    if-eqz v0, :cond_e6

    .line 172
    iput-boolean v11, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tmp_test_back:Z

    .line 173
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setFirstFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    .line 176
    :cond_e6
    return-void
.end method

.method public showBrightnessDialog(I)V
    .registers 5
    .param p1, "brightnessPercent"    # I

    .line 826
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showBrightnessDialog(I)V

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_33

    .line 828
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    .line 830
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    .line 831
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    .line 833
    .end local v0    # "localView":Landroid/view/View;
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_40

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 836
    :cond_40
    const/16 v0, 0x64

    if-le p1, v0, :cond_47

    .line 837
    const/16 p1, 0x64

    goto :goto_4a

    .line 838
    :cond_47
    if-gez p1, :cond_4a

    .line 839
    const/4 p1, 0x0

    .line 841
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 843
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 844
    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V
    .registers 12
    .param p1, "deltaX"    # F
    .param p2, "seekTime"    # Ljava/lang/String;
    .param p3, "seekTimePosition"    # J
    .param p5, "totalTime"    # Ljava/lang/String;
    .param p6, "totalTimeDuration"    # J

    .line 756
    invoke-super/range {p0 .. p7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    .line 757
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_49

    .line 758
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 760
    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    .line 761
    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    .line 762
    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    .line 763
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    .line 765
    .end local v0    # "localView":Landroid/view/View;
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_56

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 769
    :cond_56
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x0

    cmp-long v3, p6, v1

    if-gtz v3, :cond_7b

    const/4 v1, 0x0

    goto :goto_81

    :cond_7b
    const-wide/16 v1, 0x64

    mul-long v1, v1, p3

    div-long/2addr v1, p6

    long-to-int v1, v1

    :goto_81
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 772
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_92

    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9a

    .line 775
    :cond_92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 777
    :goto_9a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 778
    return-void
.end method

.method public showVolumeDialog(FI)V
    .registers 6
    .param p1, "deltaY"    # F
    .param p2, "volumePercent"    # I

    .line 790
    invoke-super {p0, p1, p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showVolumeDialog(FI)V

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3e

    .line 792
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 793
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    .line 794
    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    .line 795
    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 796
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    .line 798
    .end local v0    # "localView":Landroid/view/View;
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 799
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 801
    :cond_4b
    if-gtz p2, :cond_56

    .line 802
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5e

    .line 804
    :cond_56
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 806
    :goto_5e
    const/16 v0, 0x64

    if-le p2, v0, :cond_65

    .line 807
    const/16 p2, 0x64

    goto :goto_68

    .line 808
    :cond_65
    if-gez p2, :cond_68

    .line 809
    const/4 p2, 0x0

    .line 811
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 813
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 814
    return-void
.end method

.method public showWifiDialog()V
    .registers 4

    .line 405
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showWifiDialog()V

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$4;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 431
    return-void
.end method

.method public startDismissControlViewTimer()V
    .registers 5

    .line 869
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 870
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    .line 871
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    .line 872
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 873
    return-void
.end method

.method public updateStartImage()V
    .registers 5

    .line 737
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 741
    :cond_1a
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2a

    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 744
    :cond_2a
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_42

    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 749
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    :goto_4f
    return-void
.end method
