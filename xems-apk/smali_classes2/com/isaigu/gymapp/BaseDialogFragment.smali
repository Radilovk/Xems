.class public abstract Lcom/isaigu/gymapp/BaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# instance fields
.field private parentActivity:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    if-nez v0, :cond_10

    .line 45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 46
    instance-of v1, v0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_10

    .line 47
    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 50
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    return-object v0
.end method

.method public abstract getViewIid()I
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 2

    .prologue
    .line 92
    return-void
.end method

.method protected hideSoftInput(Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 66
    if-nez p1, :cond_3

    .line 77
    :cond_2
    :goto_2
    return-void

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 73
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    if-eqz v0, :cond_2

    .line 75
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    instance-of v0, p1, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_b

    .line 39
    check-cast p1, Lcom/isaigu/gymapp/BaseActivity;

    iput-object p1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 41
    :cond_b
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 29
    instance-of v0, p1, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_b

    .line 30
    check-cast p1, Lcom/isaigu/gymapp/BaseActivity;

    iput-object p1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 32
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_15

    .line 84
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 85
    const v2, 0x7f0e00a2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 87
    :cond_15
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getViewIid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/isaigu/gymapp/BaseDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/BaseDialogFragment$1;-><init>(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 105
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 106
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setKeyBoardVisible(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 108
    :cond_2e
    return-void
.end method
