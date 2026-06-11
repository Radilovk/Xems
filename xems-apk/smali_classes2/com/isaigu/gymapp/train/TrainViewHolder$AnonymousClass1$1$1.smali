.class Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;

.field final synthetic val$trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->this$2:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->val$trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->this$2:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->val$trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->this$2:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->lambda$bindNotEmpty$9$TrainViewHolder()V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1$1;->this$2:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1$1;->this$1:Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder$AnonymousClass1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    # invokes: Lcom/isaigu/gymapp/train/TrainViewHolder;->onItemChange()V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 195
    return-void
.end method
