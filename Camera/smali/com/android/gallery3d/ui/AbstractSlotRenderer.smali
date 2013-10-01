.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200ec

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 35
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020089

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02006a

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 37
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020068

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 38
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020069

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 39
    return-void
.end method

.method protected static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "padding"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 113
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V
    .locals 6
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 43
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 48
    if-eqz p5, :cond_0

    .line 49
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 50
    int-to-float v1, p5

    invoke-interface {p1, v1, v3, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 51
    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 55
    :cond_0
    int-to-float v1, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 58
    .local v0, scale:F
    invoke-interface {p1, v0, v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 59
    invoke-interface {p2, p1, v5, v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 61
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 62
    return-void
.end method

.method protected drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 79
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 81
    return-void
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 103
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 99
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 107
    return-void
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 14
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 68
    .local v1, v:Lcom/android/gallery3d/ui/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 69
    .local v13, scale:F
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 70
    .local v5, w:I
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 71
    .local v6, h:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 73
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v11, v2, 0x6

    .line 74
    .local v11, s:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 75
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 91
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
