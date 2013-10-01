.class public Lcom/android/gallery3d/common/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;
    }
.end annotation


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    iput-boolean p3, p0, Lcom/android/gallery3d/common/OverScroller;->mFlywheel:Z

    .line 75
    new-instance v0, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    .line 76
    new-instance v0, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    .line 78
    invoke-static {p1}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 516
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 517
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    const/4 v6, 0x0

    .line 342
    :goto_0
    return v6

    .line 298
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/common/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 342
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 303
    .local v4, time:J
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 305
    .local v1, elapsedTime:J
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 306
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 307
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 309
    .local v3, q:F
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 310
    invoke-static {v3}, Lcom/android/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v3

    .line 315
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 316
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 318
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/common/OverScroller;->abortAnimation()V

    goto :goto_1

    .line 323
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 324
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 325
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 331
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 333
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/gallery3d/common/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 440
    .local v6, oldVelocityX:F
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 441
    .local v7, oldVelocityY:F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 443
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 444
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 448
    .end local v6           #oldVelocityX:F
    .end local v7           #oldVelocityY:F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/common/OverScroller;->mMode:I

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 451
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #setter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    #setter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    .line 152
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 179
    .local v0, squaredNorm:F
    iget-object v1, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 180
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    #getter for: Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/common/OverScroller;->mMode:I

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 380
    return-void
.end method
