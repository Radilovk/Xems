.class Lcom/isaigu/gymapp/fragment/SettingFragment$9;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initAlternateImpulseControls()V
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
    .line 354
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 357
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/bean/UserData;->alternatePhaseType:I

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # invokes: Lcom/isaigu/gymapp/fragment/SettingFragment;->updateAlternatePhaseButtons()V
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    .line 359
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 360
    return-void
.end method
