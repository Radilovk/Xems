.class Lcom/isaigu/gymapp/fragment/TrainFragment$11;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->startGetBatteryTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$11;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    # getter for: Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_33

    .line 371
    monitor-enter v1

    .line 372
    if-eqz v1, :cond_32

    .line 373
    :try_start_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 375
    iget-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v3, :cond_19

    .line 376
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_get_battery(Ljava/lang/String;)V

    goto :goto_19

    .line 381
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 383
    :cond_33
    return-void
.end method
