.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterHue.java"


# instance fields
.field private cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    .line 25
    const-string v0, "Hue"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->mName:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    .line 27
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->mMaxParameter:I

    .line 28
    const/16 v0, -0xb4

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->mMinParameter:I

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 43
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 44
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->mParameter:I

    int-to-float v1, v4

    .line 45
    .local v1, p:F
    move v2, v1

    .line 46
    .local v2, value:F
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->identity()V

    .line 47
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->setHue(F)V

    .line 49
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->getMatrix()[F

    move-result-object v4

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    .line 51
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
    .line 33
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    .line 34
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;
    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>(Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;)V

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    .line 35
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
