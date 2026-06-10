.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/NewTrainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 101
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    const v2, 0x7f0d0043

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setTextSize(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->setHeight(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    move-result-object v0

    .line 102
    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)V

    .line 103
    return-void
.end method
