.class public Lcom/isaigu/gymapp/bean/PartStrenthBean;
.super Ljava/lang/Object;
.source "PartStrenthBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buwei:[I

.field public buweiFloat:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 8
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    return-void
.end method


# virtual methods
.method public getMaxBodyStrenth()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->migrateIfNeeded()V

    move v0, v1

    move v2, v1

    .line 31
    :goto_6
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 32
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v1, v0

    if-le v1, v2, :cond_1a

    .line 33
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v1, v0

    .line 31
    :goto_15
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_6

    .line 36
    :cond_19
    return v2

    :cond_1a
    move v1, v2

    goto :goto_15
.end method

.method public getMinBodyStrenth()I
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->migrateIfNeeded()V

    .line 41
    const/16 v1, 0x7d0

    .line 42
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 43
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v2, v2, v0

    if-ge v2, v1, :cond_15

    .line 44
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v1, v0

    .line 42
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 47
    :cond_18
    return v1
.end method

.method public migrateIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 11
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xa

    if-ge v0, v1, :cond_34

    .line 12
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1d

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v1, v0

    if-lez v1, :cond_1d

    .line 13
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v2, v2, v0

    int-to-float v2, v2

    aput v2, v1, v0

    .line 15
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_31

    .line 16
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v0

    .line 11
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_34
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 22
    move v0, v1

    :goto_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_12

    .line 23
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aput v1, v2, v0

    .line 24
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buweiFloat:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 26
    :cond_12
    return-void
.end method
