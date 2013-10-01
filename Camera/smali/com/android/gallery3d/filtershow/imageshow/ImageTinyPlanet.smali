.class public Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageTinyPlanet.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mStartAngle:F

.field private mTouchCenterX:F

.field private mTouchCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 28
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 29
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 33
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 28
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 29
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 33
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    .line 41
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 44
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


# virtual methods
.method protected getCurrentTouchAngle()F
    .locals 10

    .prologue
    .line 48
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 49
    const/4 v6, 0x0

    .line 58
    :goto_0
    return v6

    .line 51
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    sub-float v2, v6, v7

    .line 52
    .local v2, dX1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    sub-float v4, v6, v7

    .line 53
    .local v4, dY1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    sub-float v3, v6, v7

    .line 54
    .local v3, dX2:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    sub-float v5, v6, v7

    .line 56
    .local v5, dY2:F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v0

    .line 57
    .local v0, angleA:F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->angleFor(FF)F

    move-result v1

    .line 58
    .local v1, angleB:F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b4

    rem-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double/2addr v6, v8

    double-to-float v6, v6

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    .line 64
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 65
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 66
    .local v2, y:F
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentX:F

    .line 67
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCurrentY:F

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterX:F

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mCenterY:F

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->invalidate()V

    .line 83
    const/4 v3, 0x1

    return v3

    .line 72
    :pswitch_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterX:F

    .line 73
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTouchCenterY:F

    .line 74
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getAngle()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    goto :goto_0

    .line 78
    :pswitch_1
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mStartAngle:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->getCurrentTouchAngle()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->setAngle(F)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
