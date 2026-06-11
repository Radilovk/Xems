.class Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1$RunnableC00231;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$AnonymousClass1;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/SplashFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method
