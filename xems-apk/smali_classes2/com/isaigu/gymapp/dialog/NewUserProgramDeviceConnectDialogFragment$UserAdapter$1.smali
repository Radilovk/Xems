.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    .line 824
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 826
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    # invokes: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 828
    .local v0, "select":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 829
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 831
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    # getter for: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->access$1600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    # invokes: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->updateSelectedUser(Lcom/isaigu/gymapp/bean/TrainUser;)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$1900(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 833
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    # invokes: Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleSelectedItems()V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$2000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    .line 834
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->notifyDataSetChanged()V

    .line 836
    .end local v0    # "select":Z
    :cond_8c
    return-void
.end method
