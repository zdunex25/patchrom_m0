.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterBwFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const-string v0, "BW Filter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->mName:Ljava/lang/String;

    .line 27
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->mMaxParameter:I

    .line 28
    const/16 v0, -0xb4

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->mMinParameter:I

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    const/high16 v9, 0x3f80

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 42
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 43
    .local v3, h:I
    const/4 v0, 0x3

    new-array v7, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->mParameter:I

    add-int/lit16 v1, v1, 0xb4

    int-to-float v1, v1

    aput v1, v7, v0

    const/4 v0, 0x1

    aput v9, v7, v0

    const/4 v0, 0x2

    aput v9, v7, v0

    .line 46
    .local v7, hsv:[F
    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    .line 47
    .local v8, rgb:I
    shr-int/lit8 v0, v8, 0x10

    and-int/lit16 v4, v0, 0xff

    .line 48
    .local v4, r:I
    shr-int/lit8 v0, v8, 0x8

    and-int/lit16 v5, v0, 0xff

    .line 49
    .local v5, g:I
    shr-int/lit8 v0, v8, 0x0

    and-int/lit16 v6, v0, 0xff

    .local v6, b:I
    move-object v0, p0

    move-object v1, p1

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V

    .line 51
    return-object p1
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    .line 34
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V
.end method
