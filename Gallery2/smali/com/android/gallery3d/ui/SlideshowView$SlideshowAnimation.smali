.class Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
.super Lcom/android/gallery3d/anim/CanvasAnimation;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideshowAnimation"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mMovingVector:Landroid/graphics/PointF;

.field private mProgress:F

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V
    .locals 5
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "random"

    .prologue
    const/high16 v4, 0x3f00

    const v3, 0x3e4ccccd

    .line 131
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {p0}, Lcom/android/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 132
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    .line 133
    iput p3, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    .line 137
    const/16 v0, 0xdac

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->setDuration(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 142
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlideshowView;->getWidth()I

    move-result v5

    .line 143
    .local v5, viewWidth:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlideshowView;->getHeight()I

    move-result v4

    .line 145
    .local v4, viewHeight:I
    int-to-float v6, v5

    iget v7, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v4

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 147
    .local v2, initScale:F
    const/high16 v6, 0x3f80

    const v7, 0x3e4ccccd

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v3, v2, v6

    .line 149
    .local v3, scale:F
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 150
    .local v0, centerX:F
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 152
    .local v1, centerY:F
    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 153
    const/4 v6, 0x0

    invoke-interface {p1, v3, v3, v6}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 154
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    .line 164
    return-void
.end method
