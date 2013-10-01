.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterParametricBorder.java"


# instance fields
.field private mBorderColor:I

.field private mBorderCornerRadius:I

.field private mBorderSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->setFilterType(B)V

    .line 33
    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "color"
    .parameter "size"
    .parameter "radius"

    .prologue
    const/16 v1, 0xa

    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->setBorder(III)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->setFilterType(B)V

    .line 39
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    const/high16 v10, 0x42c8

    const/4 v9, 0x0

    .line 83
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 85
    .local v0, border:Landroid/graphics/Path;
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 87
    .local v6, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 88
    .local v3, h:I
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v1, v7, v8

    .line 89
    .local v1, bs:F
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v5, v7, v8

    .line 90
    .local v5, r:F
    int-to-float v7, v3

    invoke-virtual {v0, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    int-to-float v7, v6

    int-to-float v8, v3

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    int-to-float v7, v6

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    invoke-virtual {v0, v9, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v6

    sub-float/2addr v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v1

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v7, v5, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 97
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    return-object p1
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    .line 44
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->setBorder(III)V

    .line 45
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
    .line 26
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z
    .locals 5
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v1

    .line 56
    .local v1, isBorderFilter:Z
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    .line 63
    .local v0, borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;
    iget v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    if-ne v3, v4, :cond_0

    .line 66
    iget v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    if-ne v3, v4, :cond_0

    .line 69
    iget v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    if-ne v3, v4, :cond_0

    .line 72
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setBorder(III)V
    .locals 0
    .parameter "color"
    .parameter "size"
    .parameter "radius"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderColor:I

    .line 77
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderSize:I

    .line 78
    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mBorderCornerRadius:I

    .line 79
    return-void
.end method
