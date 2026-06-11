.class Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$5;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->val$dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method
