.class public Lcom/isaigu/gymapp/train/TrainItemManager;
.super Ljava/lang/Object;
.source "TrainItemManager.java"


# instance fields
.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation
.end field

.field public partsControl:[Z

.field private partsDisabled:[Z


# direct methods
.method public constructor <init>([Z[Z)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsDisabled:[Z

    .line 20
    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsControl:[Z

    .line 21
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    .line 22
    return-void
.end method

.method private addEmptyItem()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 146
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 149
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_24

    .line 150
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 154
    goto :goto_e

    .line 152
    :cond_24
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_22

    .line 155
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 157
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 159
    :cond_3d
    const/4 v0, 0x6

    if-lt v1, v0, :cond_41

    .line 169
    :cond_40
    :goto_40
    return-void

    .line 162
    :cond_41
    const/4 v0, 0x3

    if-lt v1, v0, :cond_4f

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v1, v6}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 166
    :cond_4f
    :goto_4f
    rsub-int/lit8 v0, v1, 0x3

    if-ge v2, v0, :cond_40

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v3, v6}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f
.end method

.method private getItemIndexByMac(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 138
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 142
    :goto_2e
    return-object v0

    .line 136
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 142
    :cond_33
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method static lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 120
    :cond_d
    return-void
.end method

.method static lambda$notEmptyItems$8(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public addAllPartValue(I)V
    .registers 5

    .prologue
    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/TrainItemManager$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/isaigu/gymapp/train/TrainItemManager$7;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_24

    .line 106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$8;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/TrainItemManager$8;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 113
    :cond_24
    return-void
.end method

.method public addTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 25
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemIndexByMac(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 26
    if-nez v1, :cond_22

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsDisabled:[Z

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsControl:[Z

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->init([Z[Z)V

    .line 33
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    .line 34
    return-void

    .line 29
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public closeAll()V
    .registers 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$5;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 86
    return-void
.end method

.method public disConnected(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$2;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/TrainItemManager$2;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$1;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public notEmptyItems()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$9;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    :goto_6
    return-void

    .line 40
    :cond_7
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    goto :goto_6
.end method

.method public resetAll()V
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$6;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    return-void
.end method

.method public startAll()V
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$3;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 68
    return-void
.end method

.method public stopAll()V
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/TrainItemManager$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager$4;-><init>(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 77
    return-void
.end method
