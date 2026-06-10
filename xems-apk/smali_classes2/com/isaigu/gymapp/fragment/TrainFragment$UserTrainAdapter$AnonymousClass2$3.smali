.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->run()V
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;)V
    .registers 2

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    invoke-direct {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/vo/ResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;->httpResponse2(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 1062
    return-void
.end method

.method public bridge synthetic httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1058
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    return-void
.end method

.method public httpResponse2(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .registers 7

    .prologue
    .line 1066
    if-eqz p1, :cond_1a

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1067
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$3;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getUserCustomers(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 1078
    :cond_1a
    return-void
.end method
