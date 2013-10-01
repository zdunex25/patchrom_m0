.class public abstract Lcom/android/camera/ui/OverlayRenderer;
.super Ljava/lang/Object;
.source "OverlayRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/RenderOverlay$Renderer;


# instance fields
.field protected mBottom:I

.field protected mLeft:I

.field protected mOverlay:Lcom/android/camera/ui/RenderOverlay;

.field protected mRight:I

.field protected mTop:I

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mVisible:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/OverlayRenderer;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mBottom:I

    iget v1, p0, Lcom/android/camera/ui/OverlayRenderer;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mRight:I

    iget v1, p0, Lcom/android/camera/ui/OverlayRenderer;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mVisible:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/camera/ui/OverlayRenderer;->mLeft:I

    .line 68
    iput p3, p0, Lcom/android/camera/ui/OverlayRenderer;->mRight:I

    .line 69
    iput p2, p0, Lcom/android/camera/ui/OverlayRenderer;->mTop:I

    .line 70
    iput p4, p0, Lcom/android/camera/ui/OverlayRenderer;->mBottom:I

    .line 71
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlay(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 63
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/OverlayRenderer;->mVisible:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ui/OverlayRenderer;->update()V

    .line 35
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->update()V

    .line 93
    :cond_0
    return-void
.end method
