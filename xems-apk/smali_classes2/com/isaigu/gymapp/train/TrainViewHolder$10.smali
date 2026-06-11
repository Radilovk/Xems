.class Lcom/isaigu/gymapp/train/TrainViewHolder$10;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V
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
    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$10;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$10;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v1, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$10;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$10;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 179
    return-void

    .line 177
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
