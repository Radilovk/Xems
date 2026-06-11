.class public abstract Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "BaseFullScreenDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 14
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 16
    if-nez v0, :cond_b

    .line 25
    :cond_a
    :goto_a
    return-void

    .line 19
    :cond_b
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_a

    .line 23
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_a
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_f

    .line 41
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 43
    :cond_f
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_a

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 33
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
