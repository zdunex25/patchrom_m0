.class public Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageZoom.java"


# static fields
.field private static mMaxSize:F


# instance fields
.field private mTouchDown:Z

.field private mZoomBounds:Landroid/graphics/Rect;

.field private mZoomedIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/high16 v0, 0x4400

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mMaxSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public static setZoomedSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 46
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mMaxSize:F

    .line 47
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->onTouchDown(FF)V

    .line 146
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->invalidate()V

    .line 148
    return v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->onTouchUp()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 146
    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x4387

    const/high16 v8, 0x42b4

    const/high16 v7, 0x3f80

    const/high16 v6, -0x4080

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->drawBackground(Landroid/graphics/Canvas;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, filteredImage:Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getScaleOneImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_2

    .line 106
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    .line 107
    .local v1, orientation:I
    packed-switch v1, :pswitch_data_0

    .line 128
    .end local v1           #orientation:I
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->showControls()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/ui/SliderController;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->drawToast(Landroid/graphics/Canvas;)V

    .line 136
    return-void

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->requestFilteredImages()V

    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 109
    .restart local v1       #orientation:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v9, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 118
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v9, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 123
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchDown(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onTouchDown(FF)V

    .line 59
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v0, v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 64
    .local v0, geo:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;

    move-result-object v9

    .line 68
    .local v9, originalToScreen:Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v10, v2, [F

    .line 69
    .local v10, point:[F
    const/4 v2, 0x0

    aput p1, v10, v2

    .line 70
    aput p2, v10, v1

    .line 71
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v6, inverse:Landroid/graphics/Matrix;
    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 73
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 76
    .local v11, ratio:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mMaxSize:F

    .line 77
    .local v7, mh:F
    mul-float v8, v11, v7

    .line 78
    .local v8, mw:F
    new-instance v12, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchX:F

    sub-float/2addr v1, v8

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchY:F

    sub-float/2addr v2, v7

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchX:F

    add-float/2addr v3, v8

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchY:F

    add-float/2addr v4, v8

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .local v12, zoomRect:Landroid/graphics/RectF;
    invoke-virtual {v6, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v8

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v7

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v8

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v12, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v12, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->invalidate()V

    goto/16 :goto_0
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 90
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 52
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 54
    return-void
.end method
