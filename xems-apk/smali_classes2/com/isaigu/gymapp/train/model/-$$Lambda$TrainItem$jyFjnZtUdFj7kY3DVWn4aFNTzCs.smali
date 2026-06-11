.class public final synthetic Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs;->f$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs;->f$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->lambda$close$1$TrainItem()V

    return-void
.end method
