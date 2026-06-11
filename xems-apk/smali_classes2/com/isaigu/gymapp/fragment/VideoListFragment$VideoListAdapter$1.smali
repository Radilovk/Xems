.class Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->append(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 218
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I
    .registers 12
    .param p1, "o1"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;
    .param p2, "o2"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .line 220
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 221
    .local v0, "name1":Ljava/lang/String;
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 222
    .local v1, "name2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_12

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 223
    return v3

    .line 225
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_20

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 226
    return v4

    .line 228
    :cond_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 229
    return v5

    .line 231
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v2, v6, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    .local v2, "length":I
    :goto_41
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    if-ge v6, v2, :cond_5d

    .line 233
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ge v7, v8, :cond_4f

    .line 234
    return v3

    .line 236
    :cond_4f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v7, v8, :cond_5a

    .line 237
    return v4

    .line 232
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 240
    .end local v6    # "i":I
    :cond_5d
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 218
    check-cast p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    check-cast p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I

    move-result p1

    return p1
.end method
