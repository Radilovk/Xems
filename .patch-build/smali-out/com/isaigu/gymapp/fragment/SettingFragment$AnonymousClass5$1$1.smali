.class Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;->httpResponse2(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;)V
    .registers 2

    .prologue
    .line 676
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 679
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$1000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime2(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v5, 0x7f0d0041

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v5, 0x7f0d005c

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/SettingFragment$AnonymousClass5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v5, 0x7f0d0075

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    return-void
.end method
