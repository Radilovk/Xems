.class Lcom/isaigu/gymapp/fragment/SettingFragment$7;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;


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
    .line 336
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$7;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V
    .registers 4

    .prologue
    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean p2, v0, Lcom/isaigu/gymapp/bean/UserData;->alternateImpulseMode:Z

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 341
    return-void
.end method
