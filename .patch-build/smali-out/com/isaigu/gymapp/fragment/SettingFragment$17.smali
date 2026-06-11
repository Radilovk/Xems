.class Lcom/isaigu/gymapp/fragment/SettingFragment$17;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SettingFragment.java"


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
    .line 591
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$802(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;

    .line 596
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const/16 v2, 0x3ec

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;
    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$800(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/AndroidUtils;->selectImageFromGallery(Landroid/support/v4/app/Fragment;ILjava/io/File;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$902(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    .line 600
    :goto_24
    return-void

    .line 597
    :catch_25
    move-exception v0

    .line 598
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method
