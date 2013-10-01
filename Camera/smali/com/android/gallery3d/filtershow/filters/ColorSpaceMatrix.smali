.class public Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;
.super Ljava/lang/Object;
.source "ColorSpaceMatrix.java"


# instance fields
.field private final mMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 28
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->identity()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;)V
    .locals 4
    .parameter "matrix"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 37
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method

.method private getBluef(FFF)F
    .locals 3
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getGreenf(FFF)F
    .locals 3
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getRedf(FFF)F
    .locals 3
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private multiply([F)V
    .locals 11
    .parameter "a"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    .line 66
    new-array v1, v10, [F

    .line 68
    .local v1, temp:[F
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 69
    mul-int/lit8 v4, v3, 0x4

    .line 70
    .local v4, y4:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v9, :cond_0

    .line 71
    add-int v5, v4, v2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    add-int/lit8 v7, v4, 0x0

    aget v6, v6, v7

    aget v7, p1, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    add-int/lit8 v8, v2, 0x4

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8

    add-int/lit8 v8, v2, 0x8

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    add-int/lit8 v8, v4, 0x3

    aget v7, v7, v8

    add-int/lit8 v8, v2, 0xc

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v1, v5

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v2           #x:I
    .end local v4           #y4:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v10, :cond_2

    .line 78
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    aget v6, v1, v0

    aput v6, v5, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_2
    return-void
.end method

.method private xRotateMatrix(FF)V
    .locals 4
    .parameter "rs"
    .parameter "rc"

    .prologue
    .line 83
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 84
    .local v0, c:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 86
    .local v1, tmp:[F
    const/4 v2, 0x5

    aput p2, v1, v2

    .line 87
    const/4 v2, 0x6

    aput p1, v1, v2

    .line 88
    const/16 v2, 0x9

    neg-float v3, p1

    aput v3, v1, v2

    .line 89
    const/16 v2, 0xa

    aput p2, v1, v2

    .line 91
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    .line 92
    return-void
.end method

.method private yRotateMatrix(FF)V
    .locals 4
    .parameter "rs"
    .parameter "rc"

    .prologue
    .line 96
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 97
    .local v0, c:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 99
    .local v1, tmp:[F
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 100
    const/4 v2, 0x2

    neg-float v3, p1

    aput v3, v1, v2

    .line 101
    const/16 v2, 0x8

    aput p1, v1, v2

    .line 102
    const/16 v2, 0xa

    aput p2, v1, v2

    .line 104
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    .line 105
    return-void
.end method

.method private zRotateMatrix(FF)V
    .locals 4
    .parameter "rs"
    .parameter "rc"

    .prologue
    .line 109
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 110
    .local v0, c:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 112
    .local v1, tmp:[F
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 113
    const/4 v2, 0x1

    aput p1, v1, v2

    .line 114
    const/4 v2, 0x4

    neg-float v3, p1

    aput v3, v1, v2

    .line 115
    const/4 v2, 0x5

    aput p2, v1, v2

    .line 116
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    .line 117
    return-void
.end method

.method private zShearMatrix(FF)V
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 121
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    .line 122
    .local v0, c:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    .line 124
    .local v1, tmp:[F
    const/4 v2, 0x2

    aput p1, v1, v2

    .line 125
    const/4 v2, 0x6

    aput p2, v1, v2

    .line 126
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->multiply([F)V

    .line 127
    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    return-object v0
.end method

.method public identity()V
    .locals 9

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->mMatrix:[F

    const/16 v7, 0xf

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    aput v8, v0, v1

    .line 55
    return-void
.end method

.method public setHue(F)V
    .locals 17
    .parameter "rot"

    .prologue
    .line 136
    const-wide/high16 v13, 0x4000

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    .line 137
    .local v4, mag:F
    const/high16 v13, 0x3f80

    div-float v6, v13, v4

    .line 138
    .local v6, xrs:F
    const/high16 v13, 0x3f80

    div-float v5, v13, v4

    .line 139
    .local v5, xrc:F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->xRotateMatrix(FF)V

    .line 140
    const-wide/high16 v13, 0x4008

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    .line 141
    const/high16 v13, -0x4080

    div-float v8, v13, v4

    .line 142
    .local v8, yrs:F
    const-wide/high16 v13, 0x4000

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    div-float v7, v13, v4

    .line 143
    .local v7, yrc:F
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->yRotateMatrix(FF)V

    .line 145
    const v13, 0x3e9e00d2

    const v14, 0x3f1c01a3

    const v15, 0x3da7ef9e

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->getRedf(FFF)F

    move-result v1

    .line 146
    .local v1, lx:F
    const v13, 0x3e9e00d2

    const v14, 0x3f1c01a3

    const v15, 0x3da7ef9e

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->getGreenf(FFF)F

    move-result v2

    .line 147
    .local v2, ly:F
    const v13, 0x3e9e00d2

    const v14, 0x3f1c01a3

    const v15, 0x3da7ef9e

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->getBluef(FFF)F

    move-result v3

    .line 148
    .local v3, lz:F
    div-float v11, v1, v3

    .line 149
    .local v11, zsx:F
    div-float v12, v2, v3

    .line 150
    .local v12, zsy:F
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->zShearMatrix(FF)V

    .line 152
    move/from16 v0, p1

    float-to-double v13, v0

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    const-wide v15, 0x4066800000000000L

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v10, v13

    .line 153
    .local v10, zrs:F
    move/from16 v0, p1

    float-to-double v13, v0

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    const-wide v15, 0x4066800000000000L

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v9, v13

    .line 154
    .local v9, zrc:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->zRotateMatrix(FF)V

    .line 155
    neg-float v13, v11

    neg-float v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->zShearMatrix(FF)V

    .line 156
    neg-float v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->yRotateMatrix(FF)V

    .line 157
    neg-float v13, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->xRotateMatrix(FF)V

    .line 158
    return-void
.end method
