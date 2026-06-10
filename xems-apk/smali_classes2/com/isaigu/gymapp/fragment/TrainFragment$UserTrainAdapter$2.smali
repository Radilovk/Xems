.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$connected:Z

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$macAddress:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 1209
    move v2, v3

    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_70

    .line 1211
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1212
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1213
    if-eqz v1, :cond_71

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v4, :cond_71

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$macAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1214
    iget-boolean v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$connected:Z

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 1215
    iget-boolean v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$connected:Z

    if-nez v4, :cond_48

    .line 1216
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$macAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->removeTrainRecord(Ljava/lang/String;)V

    .line 1218
    :cond_48
    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1219
    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1220
    iput v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1221
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1224
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1225
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v3, v1, v0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateUI(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1226
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->updateTime(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1230
    :cond_70
    return-void

    .line 1209
    :cond_71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method
