.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 170
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 172
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 3
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "removedPointerIndex"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 367
    .local v2, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 370
    .local v1, otherActiveIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 371
    if-eq v0, p3, :cond_0

    if-eq v0, v1, :cond_0

    .line 375
    .end local v0           #i:I
    :goto_1
    return v0

    .line 370
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 430
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 432
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 434
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 436
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 438
    :cond_1
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 439
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 440
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 441
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 442
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 382
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 384
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 385
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 386
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 388
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 390
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 391
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 392
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 393
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 395
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 396
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 397
    const-string v20, "ScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 427
    :cond_2
    :goto_0
    return-void

    .line 404
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 405
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 406
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 407
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 408
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 409
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 410
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 411
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 413
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 414
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 415
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 416
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 417
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 418
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 419
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 420
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 422
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 423
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 425
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    .line 426
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 489
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 490
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 491
    .local v0, cvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 492
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 494
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 524
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 525
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 526
    .local v0, pvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 527
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 529
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 563
    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 573
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 179
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 181
    .local v4, action:I
    if-nez v4, :cond_1

    .line 182
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 185
    :cond_1
    const/4 v10, 0x1

    .line 186
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 187
    const/4 v10, 0x0

    .line 357
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 360
    :cond_3
    return v10

    .line 188
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 189
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 191
    :pswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 192
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_0

    .line 202
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 203
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 204
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 207
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 208
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 209
    if-ltz v12, :cond_6

    if-ne v12, v13, :cond_7

    .line 211
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 215
    :try_start_0
    const-string v19, "ScaleGestureDetector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_POINTER_DOWN:: index0 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v12, 0x0

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 227
    :cond_7
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 229
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v8

    .line 219
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v12, 0x0

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto :goto_1

    .line 222
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v19

    const/4 v12, 0x0

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    throw v19

    .line 237
    .end local v12           #index0:I
    .end local v13           #index1:I
    :cond_8
    packed-switch v4, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 335
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 240
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 241
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 242
    .local v15, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v16, v0

    .line 243
    .local v16, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 245
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .end local v15           #oldActive0:I
    :goto_2
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 248
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 251
    .restart local v12       #index0:I
    if-ltz v12, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 253
    :cond_9
    const-string v19, "ScaleGestureDetector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Got "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Did you forget to pass an event to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 261
    :cond_a
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .end local v12           #index0:I
    .restart local v15       #oldActive0:I
    :cond_b
    move/from16 v15, v16

    .line 246
    goto/16 :goto_2

    .line 268
    .end local v15           #oldActive0:I
    .end local v16           #oldActive1:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 269
    .local v17, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 270
    .local v6, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 272
    .local v5, actionId:I
    const/4 v9, 0x0

    .line 273
    .local v9, gestureEnded:Z
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_e

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 276
    .local v14, newIndex:I
    if-ltz v14, :cond_d

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 279
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 280
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 281
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 299
    .end local v14           #newIndex:I
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 300
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 301
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 306
    :goto_4
    if-eqz v9, :cond_2

    .line 308
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_11

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 312
    .local v7, activeId:I
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 314
    .local v11, index:I
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 315
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 322
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 323
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 324
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    .line 284
    .end local v7           #activeId:I
    .end local v11           #index:I
    .restart local v14       #newIndex:I
    :cond_d
    const/4 v9, 0x1

    goto :goto_3

    .line 286
    .end local v14           #newIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 288
    .restart local v14       #newIndex:I
    if-ltz v14, :cond_f

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 291
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 292
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 293
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_3

    .line 296
    :cond_f
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 303
    .end local v14           #newIndex:I
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 311
    :cond_11
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_5

    .line 317
    .restart local v7       #activeId:I
    .restart local v11       #index:I
    :catch_1
    move-exception v8

    .line 318
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_6

    .line 330
    .end local v5           #actionId:I
    .end local v6           #actionIndex:I
    .end local v7           #activeId:I
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v9           #gestureEnded:Z
    .end local v11           #index:I
    .end local v17           #pointerCount:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 339
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3f2b851f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v18

    .line 347
    .local v18, updatePrevious:Z
    if-eqz v18, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 349
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 237
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
