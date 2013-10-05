.class Lcom/android/camera/CropImageView;
.super Lcom/android/camera/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/android/camera/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 881
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    .line 882
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 1075
    iget-object v1, p1, Lcom/android/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1077
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 1078
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 1080
    .local v2, height:F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 1081
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1083
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3ee66666

    mul-float v6, v9, v10

    .line 1084
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3ee66666

    mul-float v7, v9, v10

    .line 1086
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1087
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 1088
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1090
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 1091
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/android/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 1093
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1094
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/camera/CropImageView;->zoomTo(FFFF)V

    .line 1097
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->ensureVisible(Lcom/android/camera/HighlightView;)V

    .line 1098
    return-void
.end method

.method private ensureVisible(Lcom/android/camera/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 1047
    iget-object v6, p1, Lcom/android/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1049
    .local v6, r:Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/camera/CropImageView;->mLeft:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1050
    .local v1, panDeltaX1:I
    iget v7, p0, Lcom/android/camera/CropImageView;->mRight:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1052
    .local v2, panDeltaX2:I
    iget v7, p0, Lcom/android/camera/CropImageView;->mTop:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1053
    .local v4, panDeltaY1:I
    iget v7, p0, Lcom/android/camera/CropImageView;->mBottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1055
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_4

    move v0, v1

    .line 1056
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_5

    move v3, v4

    .line 1061
    .local v3, panDeltaY:I
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 1062
    const/4 v0, 0x0

    .line 1064
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 1065
    const/4 v3, 0x0

    .line 1067
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 1068
    :cond_2
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/CropImageView;->panBy(FF)V

    .line 1070
    :cond_3
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_4
    move v0, v2

    .line 1055
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_5
    move v3, v5

    .line 1056
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 924
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 925
    iget-object v3, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    .line 926
    .local v1, hv:Lcom/android/camera/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/HighlightView;->setFocus(Z)V

    .line 927
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    .end local v1           #hv:Lcom/android/camera/HighlightView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 931
    iget-object v3, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    .line 932
    .restart local v1       #hv:Lcom/android/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/HighlightView;->getHit(FF)I

    move-result v0

    .line 933
    .local v0, edge:I
    if-eq v0, v5, :cond_2

    .line 934
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 935
    invoke-virtual {v1, v5}, Lcom/android/camera/HighlightView;->setFocus(Z)V

    .line 936
    invoke-virtual {v1}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 941
    .end local v0           #edge:I
    .end local v1           #hv:Lcom/android/camera/HighlightView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 942
    return-void

    .line 930
    .restart local v0       #edge:I
    .restart local v1       #hv:Lcom/android/camera/HighlightView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/android/camera/HighlightView;)V
    .locals 2
    .parameter "hv"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CropImage;

    .line 1111
    .local v0, cropImage:Lcom/android/camera/CropImage;
    iget-boolean v1, v0, Lcom/android/camera/CropImage;->mCircleCrop:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/camera/CropImage;->mRectCrop:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 1115
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1102
    invoke-super {p0, p1}, Lcom/android/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HighlightView;

    invoke-virtual {v1, p1}, Lcom/android/camera/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 868
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 869
    iget-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 871
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 872
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 873
    iget-boolean v2, v0, Lcom/android/camera/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 874
    invoke-direct {p0, v0}, Lcom/android/camera/CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    goto :goto_0

    .line 878
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 946
    iget-object v0, p0, Lcom/android/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CropImage;

    .line 947
    .local v0, cropImage:Lcom/android/camera/CropImage;
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mSaving:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 1042
    :goto_0
    return v4

    .line 955
    :cond_0
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mCircleCrop:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mRectCrop:Z

    if-nez v4, :cond_1

    move v4, v5

    .line 956
    goto :goto_0

    .line 959
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1027
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_3
    :goto_2
    move v4, v6

    .line 1042
    goto :goto_0

    .line 961
    :pswitch_0
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_4

    .line 962
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 964
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 965
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->getBlinkRectCnt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightView;

    .line 966
    .local v2, hv:Lcom/android/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/HighlightView;->getHit(FF)I

    move-result v1

    .line 967
    .local v1, edge:I
    if-eq v1, v6, :cond_2

    .line 968
    iput v1, p0, Lcom/android/camera/CropImageView;->mMotionEdge:I

    .line 969
    iput-object v2, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->mLastX:F

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->mLastY:F

    .line 972
    iget-object v5, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/android/camera/HighlightView$ModifyMode;->Move:Lcom/android/camera/HighlightView$ModifyMode;

    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/camera/HighlightView;->setMode(Lcom/android/camera/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/camera/HighlightView$ModifyMode;->Grow:Lcom/android/camera/HighlightView$ModifyMode;

    goto :goto_3

    .line 982
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/android/camera/HighlightView;
    :pswitch_1
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_8

    .line 983
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_9

    .line 984
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->getBlinkRectCnt()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightView;

    .line 985
    .restart local v2       #hv:Lcom/android/camera/HighlightView;
    invoke-virtual {v2}, Lcom/android/camera/HighlightView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 986
    iput-object v2, v0, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    .line 987
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 988
    invoke-virtual {v0}, Lcom/android/camera/CropImage;->getBlinkRectCnt()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 987
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 991
    :cond_6
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/HighlightView;

    invoke-virtual {v4, v6}, Lcom/android/camera/HighlightView;->setHidden(Z)V

    goto :goto_5

    .line 993
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/camera/CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    .line 994
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/CropImage;

    iput-boolean v5, v4, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    move v4, v6

    .line 995
    goto/16 :goto_0

    .line 998
    .end local v2           #hv:Lcom/android/camera/HighlightView;
    .end local v3           #j:I
    :cond_8
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    if-eqz v4, :cond_9

    .line 999
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/android/camera/CropImageView;->centerBasedOnHighlightView(Lcom/android/camera/HighlightView;)V

    .line 1000
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    sget-object v5, Lcom/android/camera/HighlightView$ModifyMode;->None:Lcom/android/camera/HighlightView$ModifyMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/HighlightView;->setMode(Lcom/android/camera/HighlightView$ModifyMode;)V

    .line 1003
    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    goto/16 :goto_1

    .line 1006
    :pswitch_2
    iget-boolean v4, v0, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_a

    .line 1007
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1008
    :cond_a
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    if-eqz v4, :cond_2

    .line 1009
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    iget v5, p0, Lcom/android/camera/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/camera/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/camera/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/camera/HighlightView;->handleMotion(IFF)V

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->mLastX:F

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/camera/CropImageView;->mLastY:F

    .line 1021
    iget-object v4, p0, Lcom/android/camera/CropImageView;->mMotionHighlightView:Lcom/android/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/android/camera/CropImageView;->ensureVisible(Lcom/android/camera/HighlightView;)V

    goto/16 :goto_1

    .line 1029
    :pswitch_3
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 1036
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 1037
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1027
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 913
    invoke-super {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 914
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 916
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 917
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 895
    invoke-super {p0}, Lcom/android/camera/ImageViewTouchBase;->zoomIn()V

    .line 896
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 897
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 898
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 900
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 904
    invoke-super {p0}, Lcom/android/camera/ImageViewTouchBase;->zoomOut()V

    .line 905
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 906
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 909
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 886
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 887
    iget-object v2, p0, Lcom/android/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightView;

    .line 888
    .local v0, hv:Lcom/android/camera/HighlightView;
    iget-object v2, v0, Lcom/android/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 889
    invoke-virtual {v0}, Lcom/android/camera/HighlightView;->invalidate()V

    goto :goto_0

    .line 891
    .end local v0           #hv:Lcom/android/camera/HighlightView;
    :cond_0
    return-void
.end method
