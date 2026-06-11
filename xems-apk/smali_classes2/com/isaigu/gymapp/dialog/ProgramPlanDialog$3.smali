.class Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;
.super Ljava/lang/Object;
.source "ProgramPlanDialog.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    .line 100
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .registers 7
    .param p1, "menuBridge"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    .line 104
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->closeMenu()V

    .line 107
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getDirection()I

    move-result v0

    .line 108
    .local v0, "direction":I
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v1

    .line 109
    .local v1, "adapterPosition":I
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getPosition()I

    move-result v2

    .line 111
    .local v2, "menuPosition":I
    if-eqz v2, :cond_12

    goto :goto_23

    .line 113
    :cond_12
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->adapter:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->access$100(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->access$000(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;->removeItem(Ljava/lang/String;I)V

    .line 116
    :goto_23
    return-void
.end method
