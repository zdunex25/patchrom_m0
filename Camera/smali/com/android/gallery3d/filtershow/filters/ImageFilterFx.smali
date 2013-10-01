.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterFx.java"


# instance fields
.field fxBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "fxBitmap"
    .parameter "name"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->setFilterType(B)V

    .line 26
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-object p1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 55
    .local v3, h:I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 56
    .local v5, fxw:I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 58
    .local v6, fxh:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;II)V

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
    .line 32
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 33
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    .line 34
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
    .line 21
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->fxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;II)V
.end method
