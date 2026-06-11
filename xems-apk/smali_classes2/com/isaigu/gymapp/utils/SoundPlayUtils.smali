.class public Lcom/isaigu/gymapp/utils/SoundPlayUtils;
.super Ljava/lang/Object;
.source "SoundPlayUtils.java"


# static fields
.field private static loadedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSoundPlayer:Landroid/media/SoundPool;

.field private static soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/isaigu/gymapp/utils/SoundPlayUtils;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    if-nez v0, :cond_1f

    .line 30
    new-instance v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/SoundPlayUtils;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    .line 31
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    .line 36
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    return-object v0
.end method

.method public static load(I)V
    .registers 5
    .param p0, "resId"    # I

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 67
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 68
    .local v0, "soundId":I
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v0    # "soundId":I
    :cond_22
    return-void
.end method

.method public static load(Ljava/lang/String;)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "soundId":I
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "soundId":I
    :cond_18
    return-void
.end method

.method public static varargs load([I)V
    .registers 8
    .param p0, "resId"    # [I

    .line 57
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2b

    aget v2, p0, v1

    .line 58
    .local v2, "res":I
    sget-object v3, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 59
    sget-object v3, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    .line 60
    .local v3, "soundId":I
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v2    # "res":I
    .end local v3    # "soundId":I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    :cond_2b
    return-void
.end method

.method public static varargs load([Ljava/lang/String;)V
    .registers 7
    .param p0, "resId"    # [Ljava/lang/String;

    .line 73
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_21

    aget-object v2, p0, v1

    .line 74
    .local v2, "res":Ljava/lang/String;
    sget-object v3, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 75
    sget-object v3, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    .line 76
    .local v3, "soundId":I
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v2    # "res":Ljava/lang/String;
    .end local v3    # "soundId":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    :cond_21
    return-void
.end method

.method public static play(I)V
    .registers 9
    .param p0, "resId"    # I

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 46
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 48
    :cond_29
    return-void
.end method

.method public static play(Ljava/lang/String;)V
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 52
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 54
    :cond_21
    return-void
.end method

.method public static unload(I)V
    .registers 4
    .param p0, "resId"    # I

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 92
    :cond_21
    return-void
.end method

.method public static unload(Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 96
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 98
    :cond_19
    return-void
.end method

.method public static unloadAll()V
    .registers 4

    .line 101
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_a

    .line 104
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void
.end method
