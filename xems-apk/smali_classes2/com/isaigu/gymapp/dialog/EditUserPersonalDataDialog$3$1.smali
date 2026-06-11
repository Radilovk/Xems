.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoose(I)V
    .registers 7
    .param p1, "index"    # I

    .line 295
    if-nez p1, :cond_30

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "oriPhotoFile":Ljava/io/File;
    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    # invokes: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 301
    goto :goto_19

    .line 299
    :catch_15
    move-exception v1

    .line 300
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    .end local v1    # "e":Ljava/io/IOException;
    :goto_19
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    # setter for: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$402(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Ljava/io/File;)Ljava/io/File;

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->catchImageFromCamera(Landroid/support/v4/app/Fragment;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->imageUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$502(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 304
    .end local v0    # "oriPhotoFile":Ljava/io/File;
    goto :goto_67

    .line 305
    :cond_30
    const/4 v0, 0x0

    .line 307
    .restart local v0    # "oriPhotoFile":Ljava/io/File;
    :try_start_31
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    # invokes: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_43

    move-object v0, v1

    .line 310
    goto :goto_47

    .line 308
    :catch_43
    move-exception v1

    .line 309
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    :goto_47
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    # setter for: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$402(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Ljava/io/File;)Ljava/io/File;

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const/16 v3, 0x3eb

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$400(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/utils/AndroidUtils;->selectImageFromGallery(Landroid/support/v4/app/Fragment;ILjava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->imageUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$502(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 314
    .end local v0    # "oriPhotoFile":Ljava/io/File;
    :goto_67
    return-void
.end method
