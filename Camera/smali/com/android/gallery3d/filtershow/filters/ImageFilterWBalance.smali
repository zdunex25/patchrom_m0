.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterWBalance.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;->setFilterType(B)V

    .line 26
    const-string v0, "WBalance"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    const/4 v4, -0x1

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 34
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .local v3, h:I
    move-object v0, p0

    move-object v1, p1

    move v5, v4

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;->nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V

    .line 36
    return-object p1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V
.end method
