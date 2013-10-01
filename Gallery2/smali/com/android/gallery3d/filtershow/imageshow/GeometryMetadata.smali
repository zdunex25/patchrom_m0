.class public Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
.super Ljava/lang/Object;
.source "GeometryMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    }
.end annotation


# static fields
.field private static final mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field private final mPhotoBounds:Landroid/graphics/RectF;

.field private mRotation:F

.field private mScaleFactor:F

.field private mStraightenRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 37
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .parameter "g"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 37
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 50
    return-void
.end method

.method public static buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .parameter "photo"
    .parameter "crop"
    .parameter "rotation"
    .parameter "straighten"
    .parameter "type"
    .parameter "newCenter"

    .prologue
    .line 441
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 442
    .local v1, m:Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v0, v2

    .line 445
    .local v0, center:[F
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 446
    invoke-static {v1, v0, p5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 447
    return-object v1
.end method

.method public static buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;
    .locals 3
    .parameter "photo"
    .parameter "crop"
    .parameter "rotation"
    .parameter "straighten"
    .parameter "type"

    .prologue
    .line 376
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 377
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 378
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 379
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 381
    return-object v0
.end method

.method public static buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .parameter "photo"
    .parameter "crop"
    .parameter "rotation"
    .parameter "straighten"
    .parameter "type"
    .parameter "newCenter"

    .prologue
    .line 483
    invoke-static/range {p0 .. p5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 484
    .local v0, m:Landroid/graphics/Matrix;
    neg-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 485
    return-object v0
.end method

.method protected static concatHorizontalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .parameter "m"
    .parameter "width"

    .prologue
    .line 196
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 198
    return-void
.end method

.method public static concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .parameter "m"
    .parameter "width"
    .parameter "height"
    .parameter "type"

    .prologue
    .line 231
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_1

    .line 232
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_2

    .line 234
    invoke-static {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0

    .line 235
    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_0

    .line 236
    invoke-static {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    .line 237
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0
.end method

.method public static concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V
    .locals 3
    .parameter "m"
    .parameter "currentCenter"
    .parameter "newCenter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    aget v0, p2, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aget v1, p2, v2

    aget v2, p1, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 392
    return-void
.end method

.method protected static concatVerticalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .parameter "m"
    .parameter "height"

    .prologue
    .line 209
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    return-void
.end method

.method public static getFlipMatrix(FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "type"

    .prologue
    .line 215
    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_0

    .line 216
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getHorizontalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 217
    :cond_0
    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_1

    .line 218
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getVerticalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_2

    .line 220
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getVerticalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 221
    .local v0, flipper:Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getHorizontalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 224
    .end local v0           #flipper:Landroid/graphics/Matrix;
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    move-object v0, v1

    .line 226
    goto :goto_0
.end method

.method protected static getHorizontalMatrix(F)Landroid/graphics/Matrix;
    .locals 3
    .parameter "width"

    .prologue
    .line 189
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    .local v0, flipHorizontalMatrix:Landroid/graphics/Matrix;
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    return-object v0
.end method

.method protected static getVerticalMatrix(F)Landroid/graphics/Matrix;
    .locals 3
    .parameter "height"

    .prologue
    .line 202
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    .local v0, flipVerticalMatrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "original"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    .end local p1
    :goto_0
    return-object p1

    .line 77
    .restart local p1
    :cond_0
    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->setGeometryMetadata(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 78
    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, m:Landroid/graphics/Bitmap;
    move-object p1, v0

    .line 79
    goto :goto_0
.end method

.method public buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "scaling"
    .parameter "dx"
    .parameter "dy"
    .parameter "rotation"

    .prologue
    const/high16 v3, 0x4000

    .line 347
    div-float v0, p1, v3

    .line 348
    .local v0, dx0:F
    div-float v1, p2, v3

    .line 349
    .local v1, dy0:F
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v2

    .line 350
    .local v2, m:Landroid/graphics/Matrix;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    invoke-virtual {v2, p6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 352
    invoke-virtual {v2, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 353
    invoke-virtual {v2, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 354
    return-object v2
.end method

.method public buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "scaling"
    .parameter "dx"
    .parameter "dy"
    .parameter "onlyRotate"

    .prologue
    .line 360
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 361
    .local v6, rot:F
    if-nez p6, :cond_0

    .line 362
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    add-float/2addr v6, v0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 364
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public buildTotalXform(FF[F)Landroid/graphics/Matrix;
    .locals 11
    .parameter "bmWidth"
    .parameter "bmHeight"
    .parameter "displayCenter"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 406
    .local v9, rp:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 408
    .local v8, rc:Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v10

    .line 409
    .local v10, scale:F
    invoke-static {v8, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 410
    .local v1, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 412
    .local v0, scaledPhoto:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v7

    .line 415
    .local v7, m1:Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v6, v2

    .line 418
    .local v6, cropCenter:[F
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 420
    invoke-static {v7, v6, p3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 421
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 423
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    if-ne p0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 157
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 159
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 160
    .local v0, d:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 109
    const/high16 v0, 0x3f80

    .line 110
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v0

    .line 112
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    .line 337
    .local v0, type:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    invoke-static {p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;

    move-result-object v1

    return-object v1
.end method

.method public getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    return-object v0
.end method

.method public getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;
    .locals 8
    .parameter "orientation"
    .parameter "originalWidth"
    .parameter "originalHeight"

    .prologue
    const/high16 v7, 0x4387

    const/high16 v6, 0x42b4

    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    const/high16 v3, 0x4000

    .line 243
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 244
    .local v0, imageRotation:Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 247
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 252
    :pswitch_1
    const/high16 v1, 0x4334

    div-float v2, p2, v3

    div-float v3, p3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 256
    :pswitch_2
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 257
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 266
    :pswitch_4
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 270
    :pswitch_5
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 271
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 277
    :pswitch_6
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 278
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 280
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;
    .locals 20
    .parameter "rotate"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v16

    .line 290
    .local v16, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 291
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 292
    .local v13, imageWidth:F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 294
    .local v11, imageHeight:F
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v15

    .line 295
    .local v15, orientation:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;

    move-result-object v12

    .line 297
    .local v12, imageRotation:Landroid/graphics/Matrix;
    const/4 v5, 0x6

    if-eq v15, v5, :cond_0

    const/16 v5, 0x8

    if-eq v15, v5, :cond_0

    const/4 v5, 0x5

    if-eq v15, v5, :cond_0

    const/4 v5, 0x7

    if-ne v15, v5, :cond_1

    .line 301
    :cond_0
    move/from16 v19, p2

    .line 302
    .local v19, tmp:F
    move/from16 p2, p3

    .line 303
    move/from16 p3, v19

    .line 306
    .end local v19           #tmp:F
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v17

    .line 308
    .local v17, preScale:F
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v13, v11, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 310
    .local v18, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 311
    move/from16 v0, p5

    move/from16 v1, p4

    invoke-static {v13, v11, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 314
    :cond_2
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 315
    .local v4, scaledCrop:Landroid/graphics/RectF;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 316
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    div-float v6, p4, v6

    aput v6, v8, v5

    const/4 v5, 0x1

    const/high16 v6, 0x4000

    div-float v6, p5, v6

    aput v6, v8, v5

    .line 319
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v14

    .line 321
    .local v14, m1:Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 324
    .local v10, cropCenter:[F
    invoke-virtual {v14, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 325
    invoke-static {v14, v10, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v14, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 327
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 328
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 329
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 331
    return-object v14
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewCropBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    return v0
.end method

.method public getStraightenRotation()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    return v0
.end method

.method public hasModifications()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 53
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 59
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    .local v0, cropBounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 64
    .local v1, photoBounds:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasSwitchedWidthHeight()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    const/high16 v1, 0x42b4

    div-float/2addr v0, v1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    const/16 v0, 0x17

    .line 170
    .local v0, result:I
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x2c9

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 172
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 173
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 175
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 176
    return v0
.end method

.method public set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .parameter "g"

    .prologue
    .line 83
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 84
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 85
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 88
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 89
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 90
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "newCropBounds"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 142
    return-void
.end method

.method public setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 130
    return-void
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "newPhotoBounds"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 146
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 134
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 126
    return-void
.end method

.method public setStraightenRotation(F)V
    .locals 0
    .parameter "straighten"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",straighten="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",photoRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
