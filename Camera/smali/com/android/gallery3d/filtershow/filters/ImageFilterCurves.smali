.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterCurves.java"


# instance fields
.field private final mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/ui/Spline;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    .line 29
    const-string v0, "Curves"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->reset()V

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 84
    .local v4, rgbGradient:[I
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 89
    .end local v4           #rgbGradient:[I
    :cond_0
    const/4 v9, 0x0

    .line 90
    .local v9, redGradient:[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const/16 v0, 0x100

    new-array v9, v0, [I

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 94
    :cond_1
    const/4 v10, 0x0

    .line 95
    .local v10, greenGradient:[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    const/16 v0, 0x100

    new-array v10, v0, [I

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 99
    :cond_2
    const/4 v11, 0x0

    .line 100
    .local v11, blueGradient:[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    const/16 v0, 0x100

    new-array v11, v0, [I

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p0, v11, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 107
    return-object p1
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    .line 36
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->setSpline(Lcom/android/gallery3d/filtershow/ui/Spline;I)V

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 1
    .parameter "splineIndex"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isNil()Z
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 51
    :goto_1
    return v1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public populateArray([II)V
    .locals 5
    .parameter "array"
    .parameter "curveIndex"

    .prologue
    .line 70
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v2, v3, p2

    .line 71
    .local v2, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    if-nez v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->getAppliedCurve()[F

    move-result-object v0

    .line 75
    .local v0, curve:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    .line 76
    aget v3, v0, v1

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p1, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 119
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>()V

    .line 121
    .local v1, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 122
    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    new-instance v3, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V

    aput-object v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z
    .locals 6
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v2

    .line 57
    .local v2, isCurveFilter:Z
    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    .line 61
    .local v0, curve:Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 62
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v4, v4, v1

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSpline(Lcom/android/gallery3d/filtershow/ui/Spline;I)V
    .locals 2
    .parameter "spline"
    .parameter "splineIndex"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    new-instance v1, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V

    aput-object v1, v0, p2

    .line 112
    return-void
.end method
