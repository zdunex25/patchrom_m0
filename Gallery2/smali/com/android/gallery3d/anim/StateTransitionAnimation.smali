.class public Lcom/android/gallery3d/anim/StateTransitionAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/anim/StateTransitionAnimation$1;,
        Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;,
        Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    }
.end annotation


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentContentAlpha:F

.field private mCurrentContentScale:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private final mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 1
    .parameter "spec"
    .parameter "oldScreen"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 108
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->setDuration(I)V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iput-object p2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 112
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->disableDrawPlaceholder()V

    .line 113
    return-void

    .line 108
    .restart local p1
    :cond_0
    sget-object p1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 1
    .parameter "t"
    .parameter "oldScreen"

    .prologue
    .line 104
    #calls: Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    invoke-static {p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->access$000(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/android/gallery3d/ui/RawTexture;)V

    .line 105
    return-void
.end method

.method private applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V
    .locals 5
    .parameter "view"
    .parameter "canvas"
    .parameter "alpha"
    .parameter "scale"
    .parameter "clear"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getBackgroundColor()[F

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer([F)V

    .line 150
    :cond_1
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 151
    invoke-interface {p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 152
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 153
    .local v0, xOffset:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 154
    .local v1, yOffset:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 155
    const/high16 v2, 0x3f80

    invoke-interface {p2, p4, p4, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 156
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 157
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0
.end method


# virtual methods
.method public applyBackground(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 161
    iget v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 162
    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    iget v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V

    .line 164
    :cond_0
    return-void
.end method

.method public applyContentTransform(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 5
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 168
    .local v0, xOffset:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 169
    .local v1, yOffset:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 170
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    const/high16 v4, 0x3f80

    invoke-interface {p2, v2, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 171
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 172
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 173
    return-void
.end method

.method public applyOverlay(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 177
    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    iget v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V

    .line 179
    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 2
    .parameter "currentTimeMillis"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v0

    .line 118
    .local v0, retval:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->enableDrawPlaceholder()V

    .line 125
    :cond_1
    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    .line 144
    return-void
.end method
