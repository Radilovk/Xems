.class Lcom/isaigu/gymapp/fragment/SettingFragment$10;
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

.field final synthetic val$multiplierValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;ILandroid/widget/TextView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$10;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iput p2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$10;->val$channelIndex:I

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$10;->val$multiplierValue:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V
    .registers 11

    .prologue
    .line 409
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->channelStepMultiplier:[F

    iget v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$10;->val$channelIndex:I

    aput v0, v1, v2

    .line 411
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$10;->val$multiplierValue:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1fx"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    return-void
.end method

.method public onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 3

    .prologue
    .line 416
    return-void
.end method

.method public onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .registers 4

    .prologue
    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 421
    return-void
.end method
