.class public Lcom/android/gallery3d/ui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/EdgeEffect$Drawable;
    }
.end annotation


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->MIN_WIDTH:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 135
    new-instance v0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f020113

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    .line 136
    new-instance v0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f020114

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mMinWidth:I

    .line 139
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 347
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    .line 348
    .local v3, time:J
    iget-wide v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 350
    .local v2, t:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 352
    .local v1, interp:F
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    .line 353
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 354
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 355
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 357
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 358
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iput v11, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 361
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 362
    iput v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 364
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 365
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 366
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 367
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 370
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 371
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 372
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 373
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 376
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 377
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 378
    iput v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 380
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 381
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 382
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 383
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 386
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 387
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 388
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 389
    iput v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 394
    :pswitch_2
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 397
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 400
    iput v11, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    .line 394
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 403
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/gallery3d/ui/EdgeEffect;->update()V

    .line 309
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 310
    .local v1, edgeHeight:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 311
    .local v3, edgeWidth:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 312
    .local v5, glowHeight:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 314
    .local v7, glowWidth:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 316
    int-to-float v8, v5

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 319
    .local v4, glowBottom:I
    iget v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_0

    .line 321
    iget v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 322
    .local v6, glowLeft:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 328
    .end local v6           #glowLeft:I
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 330
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 332
    int-to-float v8, v1

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 333
    .local v0, edgeBottom:I
    iget v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 335
    iget v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 336
    .local v2, edgeLeft:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 341
    .end local v2           #edgeLeft:I
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 343
    iget v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    return v8

    .line 325
    .end local v0           #edgeBottom:I
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlow:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 339
    .restart local v0       #edgeBottom:I
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdge:Lcom/android/gallery3d/ui/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 343
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 263
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 264
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 267
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 271
    iput v3, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 272
    iput v3, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 275
    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 276
    iput v3, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 280
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 282
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 289
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 291
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 293
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    .line 183
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 184
    .local v2, now:J
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 222
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    if-eq v4, v10, :cond_1

    .line 188
    iput v6, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 190
    :cond_1
    iput v10, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 192
    iput-wide v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 193
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 195
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 196
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 198
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    .line 199
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 202
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 206
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 207
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 208
    neg-float v1, v1

    .line 210
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 211
    iput v7, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 215
    :cond_3
    const/high16 v4, 0x4080

    iget v5, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 218
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 219
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 220
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 221
    iget v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iput v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 233
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mState:I

    .line 238
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 239
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 241
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 243
    iput v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 244
    iput v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 245
    iput v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 246
    iput v2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 248
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 249
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mWidth:I

    .line 150
    iput p2, p0, Lcom/android/gallery3d/ui/EdgeEffect;->mHeight:I

    .line 151
    return-void
.end method
