.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDelta:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 72
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 76
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v17, v2, v4

    .line 107
    .local v17, timeDiff:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x190

    cmp-long v2, v17, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 144
    :goto_0
    return v2

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v2, :cond_1

    const-wide/16 v2, 0x320

    cmp-long v2, v17, v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 110
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 111
    .local v14, animStep:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v2, :cond_2

    .line 112
    const-wide/16 v2, 0x190

    cmp-long v2, v17, v2

    if-gez v2, :cond_4

    const/4 v14, 0x1

    .line 113
    :goto_1
    const/4 v2, 0x2

    if-ne v14, v2, :cond_2

    .line 114
    const-wide/16 v2, 0x190

    sub-long v17, v17, v2

    .line 118
    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    .line 119
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 120
    const-wide/16 v2, 0xc8

    cmp-long v2, v17, v2

    if-gez v2, :cond_3

    .line 121
    const v2, 0x3e99999a

    const v3, 0x3e99999a

    move-wide/from16 v0, v17

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    sub-float v15, v2, v3

    .line 122
    .local v15, f:F
    const/high16 v2, 0x437f

    mul-float/2addr v2, v15

    float-to-int v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 123
    .local v7, color:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 144
    .end local v7           #color:I
    .end local v15           #f:F
    :cond_3
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 112
    :cond_4
    const/4 v14, 0x2

    goto :goto_1

    .line 125
    :cond_5
    const/4 v2, 0x2

    if-ne v14, v2, :cond_8

    .line 126
    move-wide/from16 v0, v17

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v16, v2, v3

    .line 127
    .local v16, fraction:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move/from16 v19, v0

    .line 128
    .local v19, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move/from16 v20, v0

    .line 129
    .local v20, y:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_7

    .line 130
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v19, v19, v2

    .line 136
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 140
    move/from16 v0, v19

    float-to-int v10, v0

    move/from16 v0, v20

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_2

    .line 132
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v20, v20, v2

    goto :goto_3

    .line 142
    .end local v16           #fraction:F
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "displayRotation"

    .prologue
    .line 59
    rsub-int v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 60
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 82
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 83
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 84
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 85
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 86
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 88
    :sswitch_0
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 91
    :sswitch_1
    neg-int v0, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 94
    :sswitch_2
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 97
    :sswitch_3
    int-to-float v0, p4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
