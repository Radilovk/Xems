.class Lcom/isaigu/gymapp/train/TrainViewHolder$4;
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
    .line 114
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setUserType(I)V

    .line 118
    return-void
.end method
