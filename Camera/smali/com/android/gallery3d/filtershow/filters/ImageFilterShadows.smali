.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterShadows.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 24
    const-string v0, "Shadows"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 39
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 40
    .local v0, h:I
    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->mParameter:I

    int-to-float v1, v3

    .line 42
    .local v1, p:F
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    .line 43
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
    .line 30
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    .line 31
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
