.class Lcom/isaigu/gymapp/fragment/TrainFragment$15;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$15$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$15$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$15;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method
