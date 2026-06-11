.class public Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProgramPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlanAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;
    }
.end annotation


# instance fields
.field private mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
    .param p2, "data"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 139
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 140
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->updateAdapter(Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    if-eqz v0, :cond_b

    .line 179
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 181
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;

    .line 171
    .local v0, "planHolder":Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    .line 172
    .local v1, "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;->time:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;->plan:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->plan:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;-><init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public removeItem(Ljava/lang/String;I)V
    .registers 6
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 151
    if-ltz p2, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_45

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    .line 153
    .local v0, "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->access$200(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->access$200(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->access$000(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;->programPlanRemove(Lcom/isaigu/gymapp/bean/ProgramPlanBean;Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;)V

    .line 157
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_45

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 161
    .end local v0    # "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    :cond_45
    return-void
.end method

.method public updateAdapter(Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V
    .registers 2
    .param p1, "data"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 144
    if-eqz p1, :cond_7

    .line 145
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->mData:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->notifyDataSetChanged()V

    .line 148
    :cond_7
    return-void
.end method
