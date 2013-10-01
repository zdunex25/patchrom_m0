.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterBorder.java"


# instance fields
.field mNinePatch:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "ninePatch"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->setFilterType(B)V

    .line 36
    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 84
    :goto_0
    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 76
    .local v4, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 78
    .local v2, h:I
    const/high16 v5, 0x4000

    mul-float v3, p2, v5

    .line 79
    .local v3, scale:F
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v6, v2

    div-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 82
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    .line 30
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
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
    .line 24
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z
    .locals 5
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v1

    .line 51
    .local v1, isBorderFilter:Z
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    .line 58
    .local v0, borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    .line 61
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ninePatch"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method
