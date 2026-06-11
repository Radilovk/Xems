.class Lcom/isaigu/gymapp/fragment/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .prologue
    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean p2, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    .line 63
    return-void
.end method
