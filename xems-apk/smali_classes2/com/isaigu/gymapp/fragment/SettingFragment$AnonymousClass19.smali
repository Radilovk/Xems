.class public Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnonymousClass19"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19$AnonymousClass1;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .registers 2

    .prologue
    .line 501
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    .line 502
    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 511
    :cond_15
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "logo2.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 513
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 514
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 515
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[B)V

    .line 516
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19$AnonymousClass1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19$AnonymousClass1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass19;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 520
    :goto_3c
    return-void

    .line 517
    :catch_3d
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method
