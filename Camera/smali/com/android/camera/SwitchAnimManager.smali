.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mPreviewFrameLayoutWidth:I

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 25
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v23, v2, v6

    .line 75
    .local v23, timeDiff:J
    move-wide/from16 v0, v23

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 118
    :goto_0
    return v2

    .line 76
    :cond_0
    move-wide/from16 v0, v23

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v15, v2, v3

    .line 79
    .local v15, fraction:F
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v13, v2, v3

    .line 80
    .local v13, centerX:F
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v14, v2, v3

    .line 81
    .local v14, centerY:F
    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v15

    mul-float/2addr v3, v6

    sub-float v16, v2, v3

    .line 82
    .local v16, previewAnimScale:F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v18, v2, v16

    .line 83
    .local v18, previewWidth:F
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v17, v2, v16

    .line 84
    .local v17, previewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v18, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 85
    .local v4, previewX:I
    const/high16 v2, 0x4000

    div-float v2, v17, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 88
    .local v5, previewY:I
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v15

    add-float v19, v2, v3

    .line 96
    .local v19, reviewAnimScale:F
    const/high16 v22, 0x3f80

    .line 97
    .local v22, scaleRatio:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v2, :cond_1

    .line 98
    move/from16 v0, p4

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v3, v3

    div-float v22, v2, v3

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    mul-float v21, v2, v22

    .line 103
    .local v21, reviewWidth:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    mul-float v20, v2, v22

    .line 104
    .local v20, reviewHeight:F
    const/high16 v2, 0x4000

    div-float v2, v21, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 105
    .local v8, reviewX:I
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 108
    .local v9, reviewY:I
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v12

    .line 109
    .local v12, alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 110
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 114
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v15

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 115
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 117
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v8           #reviewX:I
    .end local v9           #reviewY:I
    .end local v12           #alpha:F
    .end local v20           #reviewHeight:F
    .end local v21           #reviewWidth:F
    :cond_1
    const-string v2, "SwitchAnimManager"

    const-string v3, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "review"

    .prologue
    .line 124
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 125
    .local v8, centerX:F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 126
    .local v9, centerY:F
    const/high16 v12, 0x3f80

    .line 127
    .local v12, scaleRatio:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 128
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 132
    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 133
    .local v11, reviewWidth:F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 134
    .local v10, reviewHeight:F
    const/high16 v1, 0x4000

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 135
    .local v3, reviewX:I
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 138
    .local v4, reviewY:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v7

    .line 139
    .local v7, alpha:F
    const v1, 0x3f4ccccd

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 140
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 142
    invoke-interface {p1, v7}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 143
    const/4 v1, 0x1

    return v1

    .line 130
    .end local v3           #reviewX:I
    .end local v4           #reviewY:I
    .end local v7           #alpha:F
    .end local v10           #reviewHeight:F
    .end local v11           #reviewWidth:F
    :cond_0
    const-string v1, "SwitchAnimManager"

    const-string v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 62
    return-void
.end method

.method public setReviewDrawingSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 54
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 55
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 67
    return-void
.end method
