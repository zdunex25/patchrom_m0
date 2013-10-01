.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mDetectSimplePaths:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:I

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 49
    invoke-static {}, Landroid/graphics/Path;->init1()I

    move-result v0

    iput v0, p0, Landroid/graphics/Path;->mNativePath:I

    .line 50
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, valNative:I
    if-eqz p1, :cond_0

    .line 61
    iget v0, p1, Landroid/graphics/Path;->mNativePath:I

    .line 62
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 63
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 67
    :cond_0
    invoke-static {v0}, Landroid/graphics/Path;->init2(I)I

    move-result v1

    iput v1, p0, Landroid/graphics/Path;->mNativePath:I

    .line 68
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    .line 69
    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "dir"

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    .line 391
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_2

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 397
    :cond_3
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method private static native finalizer(I)V
.end method

.method private static native init1()I
.end method

.method private static native init2(I)I
.end method

.method private static native native_addArc(ILandroid/graphics/RectF;FF)V
.end method

.method private static native native_addCircle(IFFFI)V
.end method

.method private static native native_addOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addPath(II)V
.end method

.method private static native native_addPath(IIFF)V
.end method

.method private static native native_addPath(III)V
.end method

.method private static native native_addRect(IFFFFI)V
.end method

.method private static native native_addRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;[FI)V
.end method

.method private static native native_arcTo(ILandroid/graphics/RectF;FFZ)V
.end method

.method private static native native_close(I)V
.end method

.method private static native native_computeBounds(ILandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(IFFFFFF)V
.end method

.method private static native native_getFillType(I)I
.end method

.method private static native native_incReserve(II)V
.end method

.method private static native native_isEmpty(I)Z
.end method

.method private static native native_isRect(ILandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(IFF)V
.end method

.method private static native native_moveTo(IFF)V
.end method

.method private static native native_offset(IFF)V
.end method

.method private static native native_offset(IFFI)V
.end method

.method private static native native_quadTo(IFFFF)V
.end method

.method private static native native_rCubicTo(IFFFFFF)V
.end method

.method private static native native_rLineTo(IFF)V
.end method

.method private static native native_rMoveTo(IFF)V
.end method

.method private static native native_rQuadTo(IFFFF)V
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_rewind(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setFillType(II)V
.end method

.method private static native native_setLastPoint(IFF)V
.end method

.method private static native native_transform(II)V
.end method

.method private static native native_transform(III)V
.end method


# virtual methods
.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 2
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 469
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addArc(ILandroid/graphics/RectF;FF)V

    .line 470
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "radius"
    .parameter "dir"

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 454
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addCircle(IFFFI)V

    .line 455
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "oval"
    .parameter "dir"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 441
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addOval(ILandroid/graphics/RectF;I)V

    .line 442
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 526
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_addPath(II)V

    .line 527
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 2
    .parameter "src"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 516
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/Path;->native_addPath(IIFF)V

    .line 517
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "src"
    .parameter "matrix"

    .prologue
    .line 535
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 536
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    iget v2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_addPath(III)V

    .line 537
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "dir"

    .prologue
    .line 426
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 427
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v5, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addRect(IFFFFI)V

    .line 428
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .parameter "rect"
    .parameter "dir"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 413
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addRect(ILandroid/graphics/RectF;I)V

    .line 414
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "dir"

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 485
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 486
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "rect"
    .parameter "radii"
    .parameter "dir"

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 502
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 505
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p3, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;[FI)V

    .line 506
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 2
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"

    .prologue
    const/4 v1, 0x0

    .line 359
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 360
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 361
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 1
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "forceMoveTo"

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 344
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 345
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 369
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_close(I)V

    .line 370
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 1
    .parameter "bounds"
    .parameter "exact"

    .prologue
    .line 199
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_computeBounds(ILandroid/graphics/RectF;)V

    .line 200
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 314
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_cubicTo(IFFFFFF)V

    .line 315
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 607
    :try_start_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 611
    return-void

    .line 609
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 1
    .parameter "extraPtCount"

    .prologue
    .line 210
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_incReserve(II)V

    .line 211
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 2

    .prologue
    .line 154
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 155
    .local v0, ft:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "rect"

    .prologue
    .line 186
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_isRect(ILandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 247
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_lineTo(IFF)V

    .line 248
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 220
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_moveTo(IFF)V

    .line 221
    return-void
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    return v0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 564
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_offset(IFF)V

    .line 565
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "dst"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, dstNative:I
    if-eqz p3, :cond_0

    .line 550
    iget v0, p3, Landroid/graphics/Path;->mNativePath:I

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p3, Landroid/graphics/Path;->isSimplePath:Z

    .line 553
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, p1, p2, v0}, Landroid/graphics/Path;->native_offset(IFFI)V

    .line 554
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 277
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_quadTo(IFFFF)V

    .line 278
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 325
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_rCubicTo(IFFFFFF)V

    .line 326
    return-void
.end method

.method public rLineTo(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 262
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rLineTo(IFF)V

    .line 263
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 234
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(IFF)V

    .line 235
    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 1
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 296
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_rQuadTo(IFFFF)V

    .line 297
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 77
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 79
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 81
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_reset(I)V

    .line 82
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 90
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 92
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 94
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_rewind(I)V

    .line 95
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 100
    if-eq p0, p1, :cond_0

    .line 101
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 102
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_set(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 2
    .parameter "ft"

    .prologue
    .line 145
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 146
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 575
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(IFF)V

    .line 576
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 2

    .prologue
    .line 162
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 163
    .local v0, ft:I
    xor-int/lit8 v0, v0, 0x2

    .line 164
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, v0}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 165
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 602
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_transform(II)V

    .line 603
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .parameter "matrix"
    .parameter "dst"

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, dstNative:I
    if-eqz p2, :cond_0

    .line 589
    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 590
    iget v0, p2, Landroid/graphics/Path;->mNativePath:I

    .line 592
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    iget v2, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->native_transform(III)V

    .line 593
    return-void
.end method
