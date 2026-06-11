.class Lcom/isaigu/gymapp/train/TrainViewHolder$11;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->bindEmptyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$11;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$11;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$11;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/train/listener/OnTrainListListener;->onEmptyItemClick(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 218
    return-void
.end method
