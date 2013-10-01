.class public Lcom/android/gallery3d/common/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static ALPHA:F

.field private static DECELERATION_RATE:F

.field private static END_TENSION:F

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f80

    .line 65
    const-wide/high16 v8, 0x3fe8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/android/gallery3d/common/Scroller;->DECELERATION_RATE:F

    .line 66
    const/high16 v8, 0x4448

    sput v8, Lcom/android/gallery3d/common/Scroller;->ALPHA:F

    .line 67
    const v8, 0x3ecccccd

    sput v8, Lcom/android/gallery3d/common/Scroller;->START_TENSION:F

    .line 68
    sget v8, Lcom/android/gallery3d/common/Scroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Lcom/android/gallery3d/common/Scroller;->END_TENSION:F

    .line 70
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lcom/android/gallery3d/common/Scroller;->SPLINE:[F

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, x_min:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 78
    int-to-float v8, v2

    const/high16 v9, 0x42c8

    div-float v3, v8, v9

    .line 79
    .local v3, t:F
    const/high16 v6, 0x3f80

    .line 82
    .local v6, x_max:F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 83
    .local v5, x:F
    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 84
    .local v0, coef:F
    sub-float v8, v12, v5

    sget v9, Lcom/android/gallery3d/common/Scroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lcom/android/gallery3d/common/Scroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 85
    .local v4, tx:F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 89
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 90
    .local v1, d:F
    sget-object v8, Lcom/android/gallery3d/common/Scroller;->SPLINE:[F

    aput v1, v8, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1           #d:F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    .line 87
    :cond_1
    move v7, v5

    goto :goto_1

    .line 92
    .end local v0           #coef:F
    .end local v3           #t:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    :cond_2
    sget-object v8, Lcom/android/gallery3d/common/Scroller;->SPLINE:[F

    aput v12, v8, v13

    .line 95
    const/high16 v8, 0x4100

    sput v8, Lcom/android/gallery3d/common/Scroller;->sViscousFluidScale:F

    .line 97
    sput v12, Lcom/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    .line 98
    invoke-static {v12}, Lcom/android/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lcom/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    .line 99
    return-void
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 425
    sget v1, Lcom/android/gallery3d/common/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 426
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 427
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 433
    :goto_0
    sget v1, Lcom/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 434
    return p0

    .line 429
    :cond_0
    const v0, 0x3ebc5ab2

    .line 430
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 431
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method
