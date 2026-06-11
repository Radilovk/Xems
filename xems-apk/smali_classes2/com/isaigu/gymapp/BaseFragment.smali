.class public abstract Lcom/isaigu/gymapp/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# instance fields
.field private parentActivity:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 115
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 117
    :cond_b
    return-void
.end method

.method public getColor(I)I
    .registers 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 91
    if-nez v0, :cond_8

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_7
.end method

.method public getDimension(I)F
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 99
    if-nez v0, :cond_8

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_7
.end method

.method public getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    if-nez v0, :cond_10

    .line 42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_10

    .line 44
    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 47
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .registers 2

    .prologue
    .line 52
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    instance-of v0, p1, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_b

    .line 36
    check-cast p1, Lcom/isaigu/gymapp/BaseActivity;

    iput-object p1, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 38
    :cond_b
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 26
    instance-of v0, p1, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v0, :cond_b

    .line 27
    check-cast p1, Lcom/isaigu/gymapp/BaseActivity;

    iput-object p1, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 29
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->viewId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_20

    .line 75
    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 77
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setKeyBoardVisible(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 80
    :cond_20
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 85
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    :cond_b
    return-void
.end method

.method public showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 108
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 110
    :cond_b
    return-void
.end method

.method protected abstract viewId()I
.end method
