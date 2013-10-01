.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterContrast.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 24
    const-string v0, "Contrast"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 32
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 33
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;->mParameter:I

    int-to-float v1, v4

    .line 34
    .local v1, p:F
    move v2, v1

    .line 35
    .local v2, value:F
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    .line 36
    return-object p1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
