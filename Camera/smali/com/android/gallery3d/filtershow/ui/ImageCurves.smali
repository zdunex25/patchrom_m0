.class public Lcom/android/gallery3d/filtershow/ui/ImageCurves;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;
    }
.end annotation


# instance fields
.field blueHistogram:[I

.field gHistoPath:Landroid/graphics/Path;

.field gPaint:Landroid/graphics/Paint;

.field gPathSpline:Landroid/graphics/Path;

.field greenHistogram:[I

.field private mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

.field private mCurrentCurveIndex:I

.field private mCurrentPick:I

.field private mDidAddPoint:Z

.field private mDidDelete:Z

.field mDoingTouchMove:Z

.field private mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field redHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 42
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 43
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 45
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 47
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 53
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 42
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 43
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 45
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 47
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 53
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 63
    return-void
.end method

.method private curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilterName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, filterName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    .line 80
    .end local v0           #filterName:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 23
    .parameter "canvas"
    .parameter "histogram"
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 275
    const/4 v10, 0x0

    .line 276
    .local v10, max:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 277
    aget v19, p2, v7

    move/from16 v0, v19

    if-le v0, v10, :cond_0

    .line 278
    aget v10, p2, v7

    .line 276
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v19

    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v15, v0

    .line 282
    .local v15, w:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    sub-float v6, v19, v20

    .line 283
    .local v6, h:F
    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v4, v19, v20

    .line 284
    .local v4, dx:F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v15, v19

    .line 285
    .local v17, wl:F
    const v19, 0x3e99999a

    mul-float v19, v19, v6

    int-to-float v0, v10

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 286
    .local v16, wh:F
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 287
    .local v11, paint:Landroid/graphics/Paint;
    const/16 v19, 0x64

    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 288
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 291
    .local v12, paint2:Landroid/graphics/Paint;
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    const/high16 v19, 0x40c0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, firstPointEncountered:Z
    const/4 v13, 0x0

    .line 298
    .local v13, prev:F
    const/4 v9, 0x0

    .line 299
    .local v9, last:F
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 300
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v18, v19, v4

    .line 301
    .local v18, x:F
    aget v19, p2, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v16

    .line 302
    .local v8, l:F
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-eqz v19, :cond_3

    .line 303
    add-float v19, v8, v13

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    sub-float v14, v6, v19

    .line 304
    .local v14, v:F
    if-nez v5, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    const/4 v5, 0x1

    .line 308
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    move v13, v8

    .line 310
    move/from16 v9, v18

    .line 299
    .end local v14           #v:F
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 313
    .end local v8           #l:F
    .end local v18           #x:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    sget-object v19, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    const/16 v19, 0xff

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    const/16 v22, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    return-void
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "Curves"

    return-object v0
.end method

.method private getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 1
    .parameter "index"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    return-object v0
.end method

.method private pickControlPoint(FF)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 147
    const/4 v5, 0x0

    .line 148
    .local v5, pick:I
    iget v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v9}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v8

    .line 149
    .local v8, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 150
    .local v6, px:F
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 151
    .local v7, py:F
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 152
    .local v2, delta:D
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 153
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 154
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 155
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 157
    .local v0, currentDelta:D
    cmpg-double v9, v0, v2

    if-gez v9, :cond_0

    .line 158
    move-wide v2, v0

    .line 159
    move v5, v4

    .line 152
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    .end local v0           #currentDelta:D
    :cond_1
    iget-boolean v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v2

    const-wide/high16 v11, 0x4059

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 165
    const/4 v5, -0x1

    .line 168
    .end local v5           #pick:I
    :cond_2
    return v5
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;-><init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;)V

    new-array v2, v9, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    :goto_0
    return-void

    .line 117
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-ne v1, v9, :cond_3

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    const/high16 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    const v2, -0xff0100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    const v2, -0xffff01

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 127
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-nez v1, :cond_9

    .line 128
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v8, v1, :cond_9

    .line 129
    invoke-direct {p0, v8}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    .line 130
    .local v0, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eq v8, v1, :cond_8

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v1

    if-nez v1, :cond_8

    .line 133
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v4

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 128
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 139
    .end local v0           #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    .end local v8           #i:I
    :cond_9
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    iget-boolean v7, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v2, p1

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawToast(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 178
    .local v2, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 179
    .local v3, posY:F
    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 180
    .local v0, margin:F
    cmpg-float v5, v3, v0

    if-gez v5, :cond_0

    .line 181
    move v3, v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 186
    :cond_1
    sub-float v5, v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 189
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 190
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 191
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 192
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 193
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-eqz v5, :cond_2

    .line 194
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 196
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_3
    :goto_0
    monitor-exit p0

    return v8

    .line 199
    :cond_4
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 201
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-nez v5, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 209
    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v4

    .line 210
    .local v4, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 211
    .local v1, pick:I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-nez v5, :cond_5

    .line 212
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->pickControlPoint(FF)I

    move-result v1

    .line 213
    if-ne v1, v9, :cond_7

    .line 214
    new-instance v5, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v5, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 215
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    move-result v1

    .line 216
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 220
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 223
    :cond_5
    invoke-virtual {v4, v2, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->isPointContained(FI)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 224
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->movePoint(IFF)V

    .line 229
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0           #margin:F
    .end local v1           #pick:I
    .end local v2           #posX:F
    .end local v3           #posY:F
    .end local v4           #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 218
    .restart local v0       #margin:F
    .restart local v1       #pick:I
    .restart local v2       #posX:F
    .restart local v3       #posY:F
    .restart local v4       #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    :cond_7
    :try_start_2
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    goto :goto_1

    .line 225
    :cond_8
    if-eq v1, v9, :cond_6

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_6

    .line 226
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->deletePoint(I)V

    .line 227
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public resetCurve()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->reset()V

    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 100
    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    .line 93
    return-void
.end method

.method public setChannel(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 324
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    .line 343
    return-void

    .line 326
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 330
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 334
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 338
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000df
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateCachedImage()V
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
