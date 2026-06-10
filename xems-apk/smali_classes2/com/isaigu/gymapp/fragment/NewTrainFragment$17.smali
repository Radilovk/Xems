.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$17;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/NewTrainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 233
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->lambda$onCreateView$12$NewTrainFragment(Landroid/view/View;)V

    .line 237
    return-void
.end method
