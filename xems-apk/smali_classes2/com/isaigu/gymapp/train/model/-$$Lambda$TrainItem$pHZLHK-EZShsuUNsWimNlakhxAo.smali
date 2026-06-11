.class public final synthetic Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo;->f$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-void
.end method


# virtual methods
.method public final onReceiveBattery(I)V
    .registers 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo;->f$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->lambda$new$0$TrainItem(I)V

    return-void
.end method
