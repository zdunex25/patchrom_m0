.class public final Lcom/android/gallery3d/util/MotionEventHelper;
.super Ljava/lang/Object;
.source "MotionEventHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .parameter "e"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 94
    .local v1, n:I
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 95
    .local v2, r:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v0

    .line 97
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v2
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4
    .parameter "e"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 85
    .local v1, n:I
    new-array v2, v1, [I

    .line 86
    .local v2, r:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v2
.end method

.method private static transformAngle(Landroid/graphics/Matrix;F)F
    .locals 8
    .parameter "m"
    .parameter "angleRadians"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide v6, 0x400921fb54442d18L

    .line 106
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 107
    .local v1, v:[F
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    aput v2, v1, v3

    .line 108
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    neg-float v2, v2

    aput v2, v1, v4

    .line 109
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 112
    aget v2, v1, v3

    float-to-double v2, v2

    aget v4, v1, v4

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 113
    .local v0, result:F
    float-to-double v2, v0

    const-wide v4, -0x4006de04abbbd2e8L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 114
    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    float-to-double v2, v0

    const-wide v4, 0x3ff921fb54442d18L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 116
    float-to-double v2, v0

    sub-double/2addr v2, v6

    double-to-float v0, v2

    goto :goto_0
.end method

.method public static transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "e"
    .parameter "m"

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0
.end method

.method private static transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "e"
    .parameter "m"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 42
    .local v0, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 43
    return-object v0
.end method

.method private static transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 22
    .parameter "e"
    .parameter "m"

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 49
    .local v2, downTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 50
    .local v4, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 51
    .local v6, action:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 52
    .local v7, pointerCount:I
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/util/MotionEventHelper;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v8

    .line 53
    .local v8, pointerIds:[I
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/util/MotionEventHelper;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 54
    .local v9, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 55
    .local v10, metaState:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 56
    .local v11, xPrecision:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 57
    .local v12, yPrecision:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 58
    .local v13, deviceId:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 59
    .local v14, edgeFlags:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 60
    .local v15, source:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 63
    .local v16, flags:I
    array-length v0, v9

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 64
    .local v19, xy:[F
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v7, :cond_0

    .line 65
    mul-int/lit8 v20, v17, 0x2

    aget-object v21, v9, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v21, v0

    aput v21, v19, v20

    .line 66
    mul-int/lit8 v20, v17, 0x2

    add-int/lit8 v20, v20, 0x1

    aget-object v21, v9, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v21, v0

    aput v21, v19, v20

    .line 64
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 68
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 69
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_1

    .line 70
    aget-object v20, v9, v17

    mul-int/lit8 v21, v17, 0x2

    aget v21, v19, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 71
    aget-object v20, v9, v17

    mul-int/lit8 v21, v17, 0x2

    add-int/lit8 v21, v21, 0x1

    aget v21, v19, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 72
    aget-object v20, v9, v17

    aget-object v21, v9, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/MotionEventHelper;->transformAngle(Landroid/graphics/Matrix;F)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 69
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 80
    .local v18, n:Landroid/view/MotionEvent;
    return-object v18
.end method
