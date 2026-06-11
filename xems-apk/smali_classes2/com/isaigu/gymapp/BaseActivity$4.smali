.class Lcom/isaigu/gymapp/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 177
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$4;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$4;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->dismissLoadingDialog()V

    .line 180
    return-void
.end method
