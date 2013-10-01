.class public Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageRotate.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F

.field private mBaseAngle:F

.field private final mSnapToNinety:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mSnapToNinety:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mSnapToNinety:Z

    .line 37
    return-void
.end method

.method private computeValue()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getCurrentTouchAngle()F

    move-result v0

    .line 52
    .local v0, angle:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x43b4

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 53
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xff

    .line 83
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 87
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->constrainedRotation(F)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0156

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 59
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->computeValue()V

    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    .line 66
    return-void
.end method

.method protected setActionUp()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 72
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    .line 74
    return-void
.end method
