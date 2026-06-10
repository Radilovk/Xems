.class Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$6;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$6;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_92

    .line 239
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 241
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 242
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 243
    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 244
    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 245
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v5, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 246
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    iput-object v5, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 247
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 248
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v4

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v1, v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 238
    :cond_8d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 252
    :cond_92
    return-void
.end method
