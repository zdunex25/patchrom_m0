.class public abstract Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;
    }
.end annotation


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHasDrawn:Z

.field private mLocalDisplayBounds:Landroid/graphics/RectF;

.field private mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field protected mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

.field protected mTouchCenterX:F

.field protected mTouchCenterY:F

.field private mVisibilityGained:Z

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 51
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 60
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 51
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 60
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 66
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 78
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateLocalScalingFactorAndOffset()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 113
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    if-nez v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 116
    .local v2, imageBounds:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 117
    .local v4, imageWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 118
    .local v3, imageHeight:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 119
    .local v1, displayWidth:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 121
    .local v0, displayHeight:F
    div-float v5, v1, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    .line 122
    div-float v5, v0, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    .line 123
    sub-float v5, v0, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 124
    sub-float v5, v1, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    goto :goto_0
.end method

.method protected static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 21
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"
    .parameter "outerBounds"
    .parameter "rotation"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 511
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 513
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v19, v4, v7

    .line 514
    .local v19, x:F
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v7

    .line 515
    .local v20, y:F
    mul-float v4, v19, v19

    mul-float v7, v20, v20

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x4000

    div-float v18, v4, v7

    .line 516
    .local v18, longest:F
    sub-float v5, p5, v18

    .line 517
    .local v5, minX:F
    add-float v15, p5, v18

    .line 518
    .local v15, maxX:F
    sub-float v6, p6, v18

    .line 519
    .local v6, minY:F
    add-float v11, p6, v18

    .line 520
    .local v11, maxY:F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v7, p0

    move v8, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v7, p0

    move v10, v15

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 524
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v12, p0

    move v14, v6

    move-object/from16 v17, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 526
    move/from16 v0, p4

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 528
    return-void
.end method

.method protected static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .parameter "r"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v7, 0x4000

    .line 258
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 259
    .local v4, scale:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 260
    .local v0, centX:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 261
    .local v1, centY:F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 262
    .local v3, hw:F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 263
    .local v2, hh:F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    return-void
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 32
    .parameter "imageRect"
    .parameter "straightenAngle"

    .prologue
    .line 382
    move/from16 v8, p1

    .line 383
    .local v8, deg:F
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_0

    .line 384
    neg-float v8, v8

    .line 386
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 387
    .local v3, a:D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 388
    .local v21, sina:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 390
    .local v6, cosa:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 391
    .local v19, rw:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 392
    .local v16, rh:D
    mul-double v26, v16, v16

    mul-double v28, v19, v21

    mul-double v30, v16, v6

    add-double v28, v28, v30

    div-double v9, v26, v28

    .line 393
    .local v9, h1:D
    mul-double v26, v16, v19

    mul-double v28, v19, v6

    mul-double v30, v16, v21

    add-double v28, v28, v30

    div-double v11, v26, v28

    .line 394
    .local v11, h2:D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 395
    .local v13, hh:D
    mul-double v26, v13, v19

    div-double v24, v26, v16

    .line 397
    .local v24, ww:D
    sub-double v26, v19, v24

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 398
    .local v15, left:F
    sub-double v26, v16, v13

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 399
    .local v23, top:F
    float-to-double v0, v15

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v18, v0

    .line 400
    .local v18, right:F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 402
    .local v5, bottom:F
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v26
.end method

.method private setupLocalDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 75
    return-void
.end method

.method protected static snappedAngle(F)I
    .locals 3
    .parameter "angle"

    .prologue
    const/high16 v2, 0x42b4

    .line 82
    rem-float v1, p0, v2

    .line 83
    .local v1, remainder:F
    div-float v2, p0, v2

    float-to-int v0, v2

    .line 84
    .local v0, current:I
    const/high16 v2, -0x3dcc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 89
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x5a

    return v2

    .line 86
    :cond_1
    const/high16 v2, 0x4234

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeScale(FF)F
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 108
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 109
    .local v0, imageHeight:F
    invoke-static {v1, v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v2

    return v2
.end method

.method protected constrainedRotation(F)I
    .locals 3
    .parameter "rotation"

    .prologue
    .line 189
    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 190
    .local v0, r:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 191
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method protected drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"

    .prologue
    const/4 v2, 0x0

    .line 503
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 504
    .local v3, display:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 506
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 548
    return-void
.end method

.method protected drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 443
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 444
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 446
    return-void
.end method

.method protected drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 16
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 551
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v13

    .line 553
    .local v13, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 554
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 556
    .local v14, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 560
    :cond_0
    invoke-static {v9, v14}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 561
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 562
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 565
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v10

    .line 568
    .local v10, m:Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v11

    .line 570
    .local v11, m1:Landroid/graphics/Matrix;
    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 571
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 572
    .local v12, path:Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 574
    invoke-virtual {v10, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 576
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 579
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 580
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 581
    const/high16 v5, 0x4000

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 582
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 583
    return-object v4
.end method

.method protected drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 17
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 588
    .local v14, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 589
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 590
    .local v12, imageWidth:F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 591
    .local v11, imageHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 593
    .local v15, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 597
    :cond_0
    invoke-static {v9, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 598
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v14, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 599
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 602
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v13

    .line 604
    .local v13, m1:Landroid/graphics/Matrix;
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

    .line 607
    .local v10, cropCenter:[F
    invoke-virtual {v13, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 608
    invoke-static {v13, v10, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 610
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 612
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 619
    const/4 v5, 0x0

    aget v5, v8, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 622
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method protected getCurrentTouchAngle()F
    .locals 8

    .prologue
    .line 93
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 94
    const/4 v6, 0x0

    .line 103
    :goto_0
    return v6

    .line 96
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v2, v6, v7

    .line 97
    .local v2, dX1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v4, v6, v7

    .line 98
    .local v4, dY1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v3, v6, v7

    .line 99
    .local v3, dX2:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v5, v6, v7

    .line 101
    .local v5, dY2:F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v0

    .line 102
    .local v0, angleA:F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v1

    .line 103
    .local v1, angleB:F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b4

    rem-float/2addr v6, v7

    goto :goto_0
.end method

.method protected getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;
    .locals 11
    .parameter "r"
    .parameter "onlyRotate"

    .prologue
    const/high16 v10, 0x4000

    .line 406
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 407
    .local v7, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 409
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    const/high16 v6, 0x42b4

    div-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 413
    .local v5, yoff:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 414
    .local v4, xoff:F
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float v1, v0, v6

    .line 415
    .local v1, w:F
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float v2, v0, v6

    .line 416
    .local v2, h:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalDisplayBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalRotation()F
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalScale()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method protected getLocalStraighten()F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const-string v0, "Geometry"

    return-object v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDirtyGeometryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 534
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->clearDirtyGeometryFlag()V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->requestFilteredImages()V

    .line 537
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 543
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onSizeChanged(IIII)V

    .line 303
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setupLocalDisplayBounds(Landroid/graphics/RectF;)V

    .line 304
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setNoAction()V

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 326
    const/4 v0, 0x1

    return v0

    .line 310
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    goto :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 314
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 277
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onVisibilityChanged(Landroid/view/View;I)V

    .line 278
    if-nez p2, :cond_0

    .line 279
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 282
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->gainedVisibility()V

    .line 290
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    if-ne v0, v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->lostVisibility()V

    .line 287
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalRotation(F)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalStraighten(F)V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 134
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 137
    return-void
.end method

.method public saveAndSetPreset()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 366
    .local v1, lastHistoryItem:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 368
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 379
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 372
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 375
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    goto :goto_0
.end method

.method protected setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    .line 335
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    .line 336
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 337
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 338
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->DOWN:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 339
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 342
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 343
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 344
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 345
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 349
    return-void
.end method

.method protected setLocalCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 206
    return-void
.end method

.method protected setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 214
    return-void
.end method

.method protected setLocalRotation(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 182
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 183
    return-void
.end method

.method protected setLocalScale(F)V
    .locals 1
    .parameter "s"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 171
    return-void
.end method

.method protected setLocalStraighten(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setStraightenRotation(F)V

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 201
    return-void
.end method

.method protected setNoAction()V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 353
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method protected straightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 436
    .local v0, bounds:Landroid/graphics/RectF;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 437
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 438
    return-object v0
.end method

.method protected syncLocalToMasterGeometry()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 143
    return-void
.end method

.method protected unrotatedCropBounds()Landroid/graphics/RectF;
    .locals 10

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 450
    .local v7, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 451
    .local v9, pbounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    .line 452
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 453
    .local v5, yoff:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 454
    .local v4, xoff:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v8

    .line 456
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 457
    return-object v7
.end method

.method protected updateScale()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 176
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 177
    .local v1, zoom:F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalScale(F)V

    .line 178
    return-void
.end method
