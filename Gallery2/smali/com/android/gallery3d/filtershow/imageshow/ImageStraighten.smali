.class public Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageStraighten.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F

.field private mBaseAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 33
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

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
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 33
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 43
    return-void
.end method

.method private computeValue()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getCurrentTouchAngle()F

    move-result v0

    .line 71
    .local v0, angle:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x43b4

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 72
    const/high16 v1, -0x3dcc

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 73
    const/high16 v1, 0x4234

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 74
    return-void
.end method

.method private setCropToStraighten()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 20
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 108
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 112
    .local v14, bounds:Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 113
    .local v18, path:Landroid/graphics/Path;
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 114
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 115
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4040

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v15

    .line 119
    .local v15, display:Landroid/graphics/RectF;
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 120
    .local v11, dWidth:F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 122
    .local v7, dHeight:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    sget-object v5, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    if-ne v3, v5, :cond_1

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 126
    const/16 v17, 0x10

    .line 127
    .local v17, n:I
    move/from16 v0, v17

    int-to-float v3, v0

    div-float v19, v11, v3

    .line 128
    .local v19, step:F
    const/4 v4, 0x0

    .line 129
    .local v4, p:F
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 130
    move/from16 v0, v16

    int-to-float v3, v0

    mul-float v4, v3, v19

    .line 131
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3c

    const/16 v6, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 132
    const/4 v5, 0x0

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    const/4 v9, 0x0

    sget-object v13, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v4

    move v12, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    .end local v4           #p:F
    .end local v16           #i:I
    .end local v17           #n:I
    .end local v19           #step:F
    :cond_1
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 84
    return-void
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->saveAndSetPreset()V

    .line 79
    return-void
.end method

.method public onNewValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 94
    int-to-float v0, p1

    const/high16 v1, -0x3dcc

    const/high16 v2, 0x4234

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalStraighten(F)V

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->invalidate()V

    .line 99
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 54
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->computeValue()V

    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalStraighten(F)V

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 67
    return-void
.end method

.method protected setActionUp()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 90
    return-void
.end method
