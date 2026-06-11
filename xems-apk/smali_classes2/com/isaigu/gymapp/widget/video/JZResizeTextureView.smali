.class public Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;
.super Landroid/view/TextureView;
.source "JZResizeTextureView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JZResizeTextureView"


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 21
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 25
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 26
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 21
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 31
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 32
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 53
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JZResizeTextureView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    .line 55
    .local v1, "viewRotation":I
    iget v3, v0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 56
    .local v3, "videoWidth":I
    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 59
    .local v4, "videoHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 60
    .local v5, "parentHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 61
    .local v6, "parentWidth":I
    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eqz v6, :cond_5a

    if-eqz v5, :cond_5a

    if-eqz v3, :cond_5a

    if-eqz v4, :cond_5a

    .line 62
    sget v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5a

    .line 63
    if-eq v1, v8, :cond_53

    if-ne v1, v7, :cond_56

    .line 64
    :cond_53
    move v9, v6

    .line 65
    .local v9, "tempSize":I
    move v6, v5

    .line 66
    move v5, v9

    .line 69
    .end local v9    # "tempSize":I
    :cond_56
    mul-int v9, v3, v5

    div-int v4, v9, v6

    .line 74
    :cond_5a
    if-eq v1, v8, :cond_64

    if-ne v1, v7, :cond_5f

    goto :goto_64

    :cond_5f
    move/from16 v10, p1

    move/from16 v11, p2

    goto :goto_69

    .line 75
    :cond_64
    :goto_64
    move/from16 v9, p1

    .line 76
    .local v9, "tempMeasureSpec":I
    move/from16 v10, p2

    .line 77
    .end local p1    # "widthMeasureSpec":I
    .local v10, "widthMeasureSpec":I
    move v11, v9

    .line 80
    .end local v9    # "tempMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    .local v11, "heightMeasureSpec":I
    :goto_69
    invoke-static {v3, v10}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getDefaultSize(II)I

    move-result v9

    .line 81
    .local v9, "width":I
    invoke-static {v4, v11}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getDefaultSize(II)I

    move-result v12

    .line 82
    .local v12, "height":I
    if-lez v3, :cond_11d

    if-lez v4, :cond_11d

    .line 84
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 85
    .local v13, "widthSpecMode":I
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 86
    .local v14, "widthSpecSize":I
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 87
    .local v15, "heightSpecMode":I
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 89
    .local v7, "heightSpecSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v9

    .end local v9    # "width":I
    .local p1, "width":I
    const-string v9, "widthMeasureSpec  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v10

    .end local v10    # "widthMeasureSpec":I
    .local p2, "widthMeasureSpec":I
    const-string v10, "heightMeasureSpec ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v13, v2, :cond_e0

    if-ne v15, v2, :cond_e0

    .line 94
    move v9, v14

    .line 95
    .end local p1    # "width":I
    .restart local v9    # "width":I
    move v12, v7

    .line 97
    mul-int v2, v3, v12

    mul-int v8, v9, v4

    if-ge v2, v8, :cond_d5

    .line 98
    mul-int v2, v12, v3

    div-int v9, v2, v4

    goto/16 :goto_123

    .line 99
    :cond_d5
    mul-int v2, v3, v12

    mul-int v8, v9, v4

    if-le v2, v8, :cond_123

    .line 100
    mul-int v2, v9, v4

    div-int v12, v2, v3

    goto :goto_123

    .line 102
    .end local v9    # "width":I
    .restart local p1    # "width":I
    :cond_e0
    const/high16 v8, -0x80000000

    if-ne v13, v2, :cond_f3

    .line 104
    move v9, v14

    .line 105
    .end local p1    # "width":I
    .restart local v9    # "width":I
    mul-int v2, v9, v4

    div-int v12, v2, v3

    .line 106
    if-ne v15, v8, :cond_123

    if-le v12, v7, :cond_123

    .line 108
    move v12, v7

    .line 109
    mul-int v2, v12, v3

    div-int v9, v2, v4

    goto :goto_123

    .line 111
    .end local v9    # "width":I
    .restart local p1    # "width":I
    :cond_f3
    if-ne v15, v2, :cond_104

    .line 113
    move v12, v7

    .line 114
    mul-int v2, v12, v3

    div-int v9, v2, v4

    .line 115
    .end local p1    # "width":I
    .restart local v9    # "width":I
    if-ne v13, v8, :cond_123

    if-le v9, v14, :cond_123

    .line 117
    move v9, v14

    .line 118
    mul-int v2, v9, v4

    div-int v12, v2, v3

    goto :goto_123

    .line 122
    .end local v9    # "width":I
    .restart local p1    # "width":I
    :cond_104
    move v2, v3

    .line 123
    .end local p1    # "width":I
    .local v2, "width":I
    move v9, v4

    .line 124
    .end local v12    # "height":I
    .local v9, "height":I
    if-ne v15, v8, :cond_111

    if-le v9, v7, :cond_111

    .line 126
    move v9, v7

    .line 127
    mul-int v10, v9, v3

    div-int/2addr v10, v4

    move v12, v9

    move v9, v10

    .end local v2    # "width":I
    .local v10, "width":I
    goto :goto_113

    .line 129
    .end local v10    # "width":I
    .restart local v2    # "width":I
    :cond_111
    move v12, v9

    move v9, v2

    .end local v2    # "width":I
    .local v9, "width":I
    .restart local v12    # "height":I
    :goto_113
    if-ne v13, v8, :cond_123

    if-le v9, v14, :cond_123

    .line 131
    move v9, v14

    .line 132
    mul-int v2, v9, v4

    div-int v12, v2, v3

    goto :goto_123

    .line 82
    .end local v7    # "heightSpecSize":I
    .end local v13    # "widthSpecMode":I
    .end local v14    # "widthSpecSize":I
    .end local v15    # "heightSpecMode":I
    .end local p2    # "widthMeasureSpec":I
    .local v10, "widthMeasureSpec":I
    :cond_11d
    move/from16 p1, v9

    move/from16 p2, v10

    .line 138
    .end local v9    # "width":I
    .end local v10    # "widthMeasureSpec":I
    .restart local p1    # "width":I
    .restart local p2    # "widthMeasureSpec":I
    move/from16 v9, p1

    .end local p1    # "width":I
    .restart local v9    # "width":I
    :cond_123
    :goto_123
    if-eqz v6, :cond_16d

    if-eqz v5, :cond_16d

    if-eqz v3, :cond_16d

    if-eqz v4, :cond_16d

    .line 139
    sget v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_134

    .line 141
    move v12, v4

    .line 142
    move v9, v3

    move v10, v1

    goto :goto_16e

    .line 143
    :cond_134
    sget v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_16b

    .line 144
    const/16 v2, 0x5a

    if-eq v1, v2, :cond_141

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_144

    .line 145
    :cond_141
    move v2, v6

    .line 146
    .local v2, "tempSize":I
    move v6, v5

    .line 147
    move v5, v2

    .line 150
    .end local v2    # "tempSize":I
    :cond_144
    int-to-double v7, v4

    int-to-double v13, v3

    div-double/2addr v7, v13

    int-to-double v13, v5

    move v10, v1

    .end local v1    # "viewRotation":I
    .local v10, "viewRotation":I
    int-to-double v1, v6

    div-double/2addr v13, v1

    cmpl-double v1, v7, v13

    if-lez v1, :cond_158

    .line 151
    int-to-double v1, v6

    int-to-double v7, v9

    div-double/2addr v1, v7

    int-to-double v7, v12

    mul-double v1, v1, v7

    double-to-int v12, v1

    .line 152
    move v9, v6

    goto :goto_16e

    .line 153
    :cond_158
    int-to-double v1, v4

    int-to-double v7, v3

    div-double/2addr v1, v7

    int-to-double v7, v5

    int-to-double v13, v6

    div-double/2addr v7, v13

    cmpg-double v13, v1, v7

    if-gez v13, :cond_16e

    .line 154
    int-to-double v1, v5

    int-to-double v7, v12

    div-double/2addr v1, v7

    int-to-double v7, v9

    mul-double v1, v1, v7

    double-to-int v9, v1

    .line 155
    move v12, v5

    goto :goto_16e

    .line 143
    .end local v10    # "viewRotation":I
    .restart local v1    # "viewRotation":I
    :cond_16b
    move v10, v1

    .end local v1    # "viewRotation":I
    .restart local v10    # "viewRotation":I
    goto :goto_16e

    .line 138
    .end local v10    # "viewRotation":I
    .restart local v1    # "viewRotation":I
    :cond_16d
    move v10, v1

    .line 159
    .end local v1    # "viewRotation":I
    .restart local v10    # "viewRotation":I
    :cond_16e
    :goto_16e
    invoke-virtual {v0, v9, v12}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setMeasuredDimension(II)V

    .line 160
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .line 45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    .line 46
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->requestLayout()V

    .line 49
    :cond_e
    return-void
.end method

.method public setVideoSize(II)V
    .registers 4
    .param p1, "currentVideoWidth"    # I
    .param p2, "currentVideoHeight"    # I

    .line 36
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    if-eq v0, p2, :cond_f

    .line 37
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoWidth:I

    .line 38
    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->currentVideoHeight:I

    .line 39
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->requestLayout()V

    .line 41
    :cond_f
    return-void
.end method
