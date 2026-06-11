.class Lcom/isaigu/gymapp/fragment/MainFragment$3;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineAddUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/ResponseData",
        "<",
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/MainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_16

    .line 227
    const-string v0, "file_name_offline_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->removeData(Ljava/lang/String;Ljava/lang/Class;)V

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/MainFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/MainFragment;->initOfflineUpdateUsers()V

    .line 230
    :cond_16
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 223
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/MainFragment$3;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method
