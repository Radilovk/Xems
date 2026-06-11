.class Lcom/isaigu/gymapp/fragment/SettingFragment$11;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initChannelCalibrationRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

.field final synthetic val$channelIndex:I

.field final synthetic val$pulseValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 432
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->val$channelIndex:I

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->val$pulseValue:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V
    .registers 8

    .prologue
    .line 435
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelPulseWidthUs:[I

    iget v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->val$channelIndex:I

    aput v0, v1, v2

    .line 437
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->val$pulseValue:Landroid/widget/TextView;

    if-lez v0, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " us"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void

    .line 437
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v2, 0x7f0d0105

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 3

    .prologue
    .line 442
    return-void
.end method

.method public onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 4

    .prologue
    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 447
    return-void
.end method
