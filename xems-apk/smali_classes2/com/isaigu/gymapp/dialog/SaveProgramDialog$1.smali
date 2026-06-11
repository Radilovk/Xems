.class Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SaveProgramDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    .line 48
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->nameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$000(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 53
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    # invokes: Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$100(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;Landroid/os/IBinder;)V

    .line 59
    :cond_5e
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->listener:Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    # getter for: Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->listener:Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->access$200(Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;->onSaveProgram(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    :cond_7a
    goto :goto_7f

    .line 63
    :catch_7b
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method
