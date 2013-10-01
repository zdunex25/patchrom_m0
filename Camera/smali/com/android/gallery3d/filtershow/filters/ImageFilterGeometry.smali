.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterGeometry.java"


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 42
    const-string v0, "Geometry"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 72
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v2, cropBounds:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v7, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v1

    .line 74
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 75
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    .line 76
    :cond_0
    const/4 v6, 0x0

    .line 77
    .local v6, temp:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 82
    :goto_0
    const/4 v7, 0x2

    new-array v3, v7, [F

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    aput v8, v3, v7

    const/4 v7, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    aput v8, v3, v7

    .line 86
    .local v3, displayCenter:[F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v4

    .line 88
    .local v4, m1:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 92
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 93
    invoke-virtual {v0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 94
    return-object v6

    .line 80
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v3           #displayCenter:[F
    .end local v4           #m1:Landroid/graphics/Matrix;
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    .line 48
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setGeometryMetadata(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 53
    return-void
.end method
