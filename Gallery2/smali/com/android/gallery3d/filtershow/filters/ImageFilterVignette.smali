.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterVignette.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 24
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->setFilterType(B)V

    .line 25
    const-string v0, "Vignette"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 33
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 34
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->mParameter:I

    int-to-float v1, v4

    .line 35
    .local v1, p:F
    const/high16 v4, 0x42c8

    div-float v2, v1, v4

    .line 36
    .local v2, value:F
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    .line 38
    return-object p1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
