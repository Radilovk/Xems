.class Lcom/isaigu/gymapp/fragment/CalendarFragment$2;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermission(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 135
    if-nez p1, :cond_19

    .line 137
    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    .line 140
    goto :goto_19

    .line 138
    :catch_15
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    :goto_19
    return-void
.end method
