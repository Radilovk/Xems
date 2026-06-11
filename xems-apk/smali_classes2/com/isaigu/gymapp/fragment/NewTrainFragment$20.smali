.class Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;
.super Ljava/lang/Object;
.source "NewTrainFragment.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/NewTrainFragment;->settingAllUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$wrappers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 337
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;->val$wrappers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;->val$wrappers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$20;->val$items:Ljava/util/List;

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->lambda$settingAllUser$15(Ljava/util/ArrayList;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 341
    return-void
.end method
