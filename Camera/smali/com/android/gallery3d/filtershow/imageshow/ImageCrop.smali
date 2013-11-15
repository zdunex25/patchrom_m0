.class public Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageCrop.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;

.field private static mTouchTolerance:I


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private mAspect:Ljava/lang/String;

.field private mAspectHeight:F

.field private mAspectTextSize:I

.field private mAspectWidth:F

.field private final mBorderColor:I

.field private mFirstDraw:Z

.field private mFixAspectRatio:Z

.field private mLastRot:F

.field private movingEdges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x2d

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 51
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 61
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 66
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f0e0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 51
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 61
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 66
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 93
    const v1, 0x7f0e0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 6
    .parameter "x"
    .parameter "times"
    .parameter "d"

    .prologue
    .line 711
    const/4 v5, 0x1

    shl-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 712
    .local v2, mask:I
    and-int v3, p1, v2

    .line 713
    .local v3, mout:I
    rem-int/2addr p2, p3

    .line 714
    sub-int v5, p3, p2

    shr-int v0, v3, v5

    .line 715
    .local v0, hi:I
    shl-int v5, v3, p2

    and-int v1, v5, v2

    .line 716
    .local v1, low:I
    xor-int/lit8 v5, v2, -0x1

    and-int v4, p1, v5

    .line 717
    .local v4, ret:I
    or-int/2addr v4, v1

    .line 718
    or-int/2addr v4, v0

    .line 719
    return v4
.end method

.method private cropSetup()V
    .locals 4

    .prologue
    .line 581
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v2, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 583
    .local v0, cb:Landroid/graphics/RectF;
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 584
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 585
    .local v1, cb0:Landroid/graphics/RectF;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 589
    .end local v0           #cb:Landroid/graphics/RectF;
    .end local v1           #cb0:Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 370
    .local v1, cropped:Landroid/graphics/RectF;
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 373
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 374
    .local v2, left:F
    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 375
    .local v3, right:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4

    cmpg-float v7, v2, v3

    if-gez v7, :cond_4

    .line 376
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 383
    :cond_0
    :goto_0
    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 384
    .local v4, top:F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 385
    .local v0, bottom:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_5

    move v7, v5

    :goto_1
    cmpg-float v8, v4, v0

    if-gez v8, :cond_6

    :goto_2
    and-int/2addr v5, v7

    if-eqz v5, :cond_7

    .line 386
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 392
    :cond_1
    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v5, :cond_2

    .line 393
    iput v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 395
    :cond_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eq v5, v9, :cond_3

    .line 396
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixEdgeToCorner(I)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 398
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 399
    return-void

    .line 378
    .end local v0           #bottom:F
    .end local v4           #top:F
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 379
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_0

    .restart local v0       #bottom:F
    .restart local v4       #top:F
    :cond_5
    move v7, v6

    .line 385
    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2

    .line 388
    :cond_7
    sget v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    .line 389
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 554
    float-to-int v2, p3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 555
    .local v0, left:I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 556
    .local v1, top:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 557
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 13
    .parameter "canvas"
    .parameter "bounds"
    .parameter "p"

    .prologue
    .line 622
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v10, v0, v2

    .line 623
    .local v10, stepX:F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v11, v0, v2

    .line 624
    .local v11, stepY:F
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v10

    .line 625
    .local v1, x:F
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v12, v0, v11

    .line 626
    .local v12, y:F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 627
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v3, v1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 628
    add-float/2addr v1, v10

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 630
    :cond_0
    const/4 v9, 0x0

    .local v9, j:I
    move v4, v12

    .end local v12           #y:F
    .local v4, y:F
    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_1

    .line 631
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    move-object v2, p1

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 632
    add-float/2addr v4, v11

    .line 630
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 634
    :cond_1
    return-void
.end method

.method private fixEdgeToCorner(I)I
    .locals 1
    .parameter "moving_edges"

    .prologue
    .line 402
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 403
    or-int/lit8 p1, p1, 0x2

    .line 405
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 406
    or-int/lit8 p1, p1, 0x1

    .line 408
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 409
    or-int/lit8 p1, p1, 0x8

    .line 411
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 412
    or-int/lit8 p1, p1, 0x4

    .line 414
    :cond_3
    return p1
.end method

.method private fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .parameter "r"
    .parameter "moving_corner"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, newCrop:Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 421
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 433
    .restart local v0       #newCrop:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 424
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 426
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 427
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 429
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 430
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method private getRotatedCropBounds()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 262
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 263
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 265
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 272
    .end local v1           #crop:Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 270
    .restart local v1       #crop:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getRotatedStraightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 301
    .local v1, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 303
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    .line 310
    .end local v1           #straightenBounds:Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 308
    .restart local v1       #straightenBounds:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getScaledMinWidthHeight()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v0, disp:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    div-float v1, v2, v3

    .line 215
    .local v1, scaled:F
    return v1
.end method

.method private getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .parameter "cropBounds"

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 278
    .local v1, m:Landroid/graphics/Matrix;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 284
    .local v2, m0:Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 287
    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 290
    .local v0, crop:Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 293
    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 26
    .parameter "dX"
    .parameter "dY"

    .prologue
    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 438
    .local v7, cropped:Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v17

    .line 439
    .local v17, minWidthHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v19

    .line 440
    .local v19, scale:F
    div-float v8, p1, v19

    .line 441
    .local v8, deltaX:F
    div-float v9, p2, v19

    .line 442
    .local v9, deltaY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v20, v0

    .line 443
    .local v20, select:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 454
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 455
    or-int/lit8 v20, v20, 0x2

    .line 457
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 458
    or-int/lit8 v20, v20, 0x1

    .line 460
    :cond_1
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 461
    or-int/lit8 v20, v20, 0x8

    .line 463
    :cond_2
    const/16 v23, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 464
    or-int/lit8 v20, v20, 0x4

    .line 468
    :cond_3
    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedStraightenBounds()Landroid/graphics/RectF;

    move-result-object v22

    .line 471
    .local v22, straight:Landroid/graphics/RectF;
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 473
    :goto_0
    const/16 v23, 0x0

    cmpl-float v23, v9, v23

    if-lez v23, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 475
    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 539
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_4
    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v15

    .line 541
    .local v15, m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 542
    .local v16, m0:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 546
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 550
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 551
    :cond_7
    :goto_3
    return-void

    .line 471
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .restart local v22       #straight:Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 473
    :cond_9
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_1

    .line 477
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_a
    const/4 v11, 0x0

    .line 478
    .local v11, dx:F
    const/4 v12, 0x0

    .line 480
    .local v12, dy:F
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_b

    .line 481
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 483
    :cond_b
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_c

    .line 484
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 486
    :cond_c
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_d

    .line 487
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 490
    :cond_d
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_e

    .line 491
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 495
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v6

    .line 497
    .local v6, crop:Landroid/graphics/RectF;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v13, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v13, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 498
    .local v13, l1:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v14, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 499
    .local v14, l2:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 500
    :cond_f
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 501
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 503
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    const/16 v25, 0x0

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x1

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    .line 504
    .local v4, b:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [F

    const/16 v23, 0x0

    aput v11, v10, v23

    const/16 v23, 0x1

    aput v12, v10, v23

    .line 505
    .local v10, disp:[F
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v5

    .line 506
    .local v5, bUnit:[F
    invoke-static {v10, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v21

    .line 507
    .local v21, sp:F
    const/16 v23, 0x0

    aget v23, v5, v23

    mul-float v11, v21, v23

    .line 508
    const/16 v23, 0x1

    aget v23, v5, v23

    mul-float v12, v21, v23

    .line 509
    mul-float v23, v11, v19

    mul-float v24, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v18

    .line 510
    .local v18, newCrop:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 511
    .restart local v15       #m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 512
    .restart local v16       #m0:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 517
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto/16 :goto_3

    .line 525
    .end local v4           #b:[F
    .end local v5           #bUnit:[F
    .end local v6           #crop:Landroid/graphics/RectF;
    .end local v10           #disp:[F
    .end local v13           #l1:[F
    .end local v14           #l2:[F
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .end local v18           #newCrop:Landroid/graphics/RectF;
    .end local v21           #sp:F
    :cond_11
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_12

    .line 526
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 528
    :cond_12
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_13

    .line 529
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 531
    :cond_13
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_14

    .line 532
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 534
    :cond_14
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_4

    .line 535
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2
.end method

.method public static setTouchTolerance(I)V
    .locals 0
    .parameter "tolerance"

    .prologue
    .line 112
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 113
    return-void
.end method

.method private swapAspect()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 107
    .local v0, temp:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 108
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 109
    return-void
.end method


# virtual methods
.method public apply(FF)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 178
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 179
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 180
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 185
    return-void
.end method

.method public applyClear()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 207
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 209
    return-void
.end method

.method public applyOriginal()V
    .locals 5

    .prologue
    .line 188
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 190
    .local v1, photobounds:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 191
    .local v3, w:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 192
    .local v0, h:F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 193
    .local v2, scale:F
    div-float v4, v3, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 194
    div-float v4, v0, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 197
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 199
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 200
    return-void
.end method

.method protected decoder(IF)I
    .locals 3
    .parameter "movingEdges"
    .parameter "rotation"

    .prologue
    const/4 v2, 0x4

    .line 723
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->constrainedRotation(F)I

    move-result v0

    .line 724
    .local v0, rot:I
    sparse-switch v0, :sswitch_data_0

    .line 732
    .end local p1
    :goto_0
    return p1

    .line 726
    .restart local p1
    :sswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 728
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 730
    :sswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 27
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 639
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 640
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 641
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 642
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    const/16 v26, 0xff

    move/from16 v0, v26

    invoke-virtual {v3, v4, v5, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 644
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    if-eqz v3, :cond_0

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 646
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 648
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v20

    .line 650
    .local v20, rotation:F
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 651
    .local v13, crop:Landroid/graphics/RectF;
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 653
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 654
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 656
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v3, :cond_3

    .line 657
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v24

    .line 658
    .local v24, w:F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v17

    .line 659
    .local v17, h:F
    mul-float v3, v24, v24

    mul-float v4, v17, v17

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v16, v0

    .line 661
    .local v16, diag:F
    const/high16 v14, 0x41a0

    .line 662
    .local v14, dash_len:F
    div-float v3, v16, v14

    float-to-int v0, v3

    move/from16 v19, v0

    .line 663
    .local v19, num_intervals:I
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v22, v0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->left:F

    aput v4, v22, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->top:F

    aput v4, v22, v3

    .line 664
    .local v22, tl:[F
    const/4 v3, 0x0

    aget v3, v22, v3

    const/high16 v4, 0x4000

    div-float v4, v24, v4

    add-float v10, v3, v4

    .line 665
    .local v10, centX:F
    const/4 v3, 0x1

    aget v3, v22, v3

    const/high16 v4, 0x4000

    div-float v4, v17, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40a0

    add-float v11, v3, v4

    .line 666
    .local v11, centY:F
    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->right:F

    aput v4, v9, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    aput v4, v9, v3

    .line 667
    .local v9, br:[F
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->getUnitVectorFromPoints([F[F)[F

    move-result-object v23

    .line 669
    .local v23, vec:[F
    move-object/from16 v12, v22

    .line 670
    .local v12, counter:[F
    const/16 v25, 0x0

    .local v25, x:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 671
    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    mul-float/2addr v4, v14

    add-float v6, v3, v4

    .line 672
    .local v6, tempX:F
    const/4 v3, 0x1

    aget v3, v12, v3

    const/4 v4, 0x1

    aget v4, v23, v4

    mul-float/2addr v4, v14

    add-float v7, v3, v4

    .line 673
    .local v7, tempY:F
    rem-int/lit8 v3, v25, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, v19, 0x2

    sub-int v3, v25, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 674
    const/4 v3, 0x0

    aget v4, v12, v3

    const/4 v3, 0x1

    aget v5, v12, v3

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 676
    :cond_1
    const/4 v3, 0x0

    aput v6, v12, v3

    .line 677
    const/4 v3, 0x1

    aput v7, v12, v3

    .line 670
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 680
    .end local v6           #tempX:F
    .end local v7           #tempY:F
    :cond_2
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 681
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
    .end local v9           #br:[F
    .end local v10           #centX:F
    .end local v11           #centY:F
    .end local v12           #counter:[F
    .end local v14           #dash_len:F
    .end local v16           #diag:F
    .end local v17           #h:F
    .end local v19           #num_intervals:I
    .end local v22           #tl:[F
    .end local v23           #vec:[F
    .end local v24           #w:F
    .end local v25           #x:I
    :cond_3
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 687
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 688
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 690
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->decoder(IF)I

    move-result v15

    .line 691
    .local v15, decoded_moving:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 692
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterY:F

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->unrotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v21

    .line 694
    .local v21, scaledCrop:Landroid/graphics/RectF;
    if-nez v15, :cond_c

    const/16 v18, 0x1

    .line 695
    .local v18, notMoving:Z
    :goto_1
    and-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_4

    if-eqz v18, :cond_5

    .line 696
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 698
    :cond_5
    and-int/lit8 v3, v15, 0x8

    if-nez v3, :cond_6

    if-eqz v18, :cond_7

    .line 699
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 701
    :cond_7
    and-int/lit8 v3, v15, 0x1

    if-nez v3, :cond_8

    if-eqz v18, :cond_9

    .line 702
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 704
    :cond_9
    and-int/lit8 v3, v15, 0x4

    if-nez v3, :cond_a

    if-eqz v18, :cond_b

    .line 705
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 707
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 708
    return-void

    .line 694
    .end local v18           #notMoving:Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_1
.end method

.method protected gainedVisibility()V
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    .line 603
    .local v0, rot:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 608
    return-void
.end method

.method protected getCropBoundDisplayMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 229
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/graphics/Matrix;

    .end local v0           #m:Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    .restart local v0       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v1

    .line 235
    .local v1, zoom:F
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mXOffset:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mYOffset:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 237
    return-object v0
.end method

.method protected getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 242
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 243
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 245
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 248
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2           #m:Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    .restart local v2       #m:Landroid/graphics/Matrix;
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2           #m:Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    .restart local v2       #m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    .line 254
    .local v3, zoom:F
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCenterY:F

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 255
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mXOffset:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mYOffset:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 256
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 257
    return-object v1

    .line 250
    .end local v3           #zoom:F
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3
    .parameter "rotation"
    .parameter "localImage"

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 220
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->imageLoaded()V

    .line 594
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->syncLocalToMasterGeometry()V

    .line 595
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 596
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 597
    return-void
.end method

.method protected lostVisibility()V
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 619
    return-void
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 613
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 614
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 562
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->detectMovingEdges(FF)V

    .line 564
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 574
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCurrentX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCurrentY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->moveEdges(FF)V

    .line 577
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 578
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 570
    return-void
.end method

.method public setAspectString(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAspectTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 70
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .line 319
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 320
    .local v2, cbounds:Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v3

    .line 321
    .local v3, minWidthHeight:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 322
    .local v1, aw:F
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 323
    .local v0, ah:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_0

    .line 324
    mul-float v10, v1, v0

    div-float/2addr v3, v10

    .line 325
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v10

    const/high16 v11, 0x42b4

    div-float/2addr v10, v11

    float-to-int v7, v10

    .line 326
    .local v7, r:I
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_0

    .line 327
    move v9, v1

    .line 328
    .local v9, temp:F
    move v1, v0

    .line 329
    move v0, v9

    .line 333
    .end local v7           #r:I
    .end local v9           #temp:F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 334
    .local v5, newWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 335
    .local v4, newHeight:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_6

    .line 336
    mul-float v10, v3, v1

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_1

    mul-float v10, v3, v0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    .line 337
    :cond_1
    mul-float v5, v3, v1

    .line 338
    mul-float v4, v3, v0

    .line 348
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 349
    .local v6, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_3

    .line 350
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 352
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    .line 353
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 356
    :cond_4
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v4

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 357
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v8

    .line 359
    .local v8, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 361
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_5

    .line 362
    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 364
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 366
    return-void

    .line 341
    .end local v6           #pbounds:Landroid/graphics/RectF;
    .end local v8           #straightenBounds:Landroid/graphics/RectF;
    :cond_6
    cmpg-float v10, v5, v3

    if-gez v10, :cond_7

    .line 342
    move v5, v3

    .line 344
    :cond_7
    cmpg-float v10, v4, v3

    if-gez v10, :cond_2

    .line 345
    move v4, v3

    goto :goto_0
.end method
