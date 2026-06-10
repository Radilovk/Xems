.class Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;

.field final synthetic val$fragment1:Lcom/isaigu/gymapp/BaseFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;Lcom/isaigu/gymapp/BaseFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;->val$fragment1:Lcom/isaigu/gymapp/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 109
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0900a4

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231$1;->val$fragment1:Lcom/isaigu/gymapp/BaseFragment;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 111
    return-void
.end method
