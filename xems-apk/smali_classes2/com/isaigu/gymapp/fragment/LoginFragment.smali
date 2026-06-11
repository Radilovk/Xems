.class public Lcom/isaigu/gymapp/fragment/LoginFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;
    }
.end annotation


# instance fields
.field private autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

.field private login:Lcom/isaigu/gymapp/widget/MyButton;

.field private password:Landroid/widget/EditText;

.field private rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

.field private userName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView()V
    .registers 4

    .prologue
    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    .line 178
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    if-eqz v1, :cond_16

    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    if-eqz v1, :cond_16

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    if-eqz v1, :cond_16

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v1, :cond_20

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 183
    :cond_20
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v1, :cond_2a

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 184
    :cond_2a
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 49
    const v0, 0x7f0901d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f09011d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f090045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 59
    const v0, 0x7f09014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 63
    const v0, 0x7f0900f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->login:Lcom/isaigu/gymapp/widget/MyButton;

    .line 64
    const v0, 0x7f0900f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 66
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 68
    :cond_85
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->login:Lcom/isaigu/gymapp/widget/MyButton;

    if-eqz v0, :cond_95

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$AnonymousClass1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v0, :cond_a5

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    :cond_a5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v0, :cond_b5

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    :cond_b5
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->initView()V

    .line 82
    return-object v1
.end method

.method protected viewId()I
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f0b0042

    return v0
.end method
