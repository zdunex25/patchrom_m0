.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterRedEye.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const-string v0, "Redeye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mName:Ljava/lang/String;

    .line 28
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

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 42
    .local v7, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 43
    .local v1, h:I
    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameter:I

    int-to-float v2, v8

    .line 44
    .local v2, p:F
    move v6, v2

    .line 45
    .local v6, value:F
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 46
    .local v0, box:I
    add-float v8, v2, v10

    int-to-float v9, v0

    mul-float/2addr v8, v9

    const/high16 v9, 0x43c8

    div-float/2addr v8, v9

    float-to-int v8, v8

    div-int/lit8 v9, v7, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 47
    .local v4, sizex:I
    add-float v8, v2, v10

    int-to-float v9, v0

    mul-float/2addr v8, v9

    const/high16 v9, 0x4448

    div-float/2addr v8, v9

    float-to-int v8, v8

    div-int/lit8 v9, v1, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 49
    .local v5, sizey:I
    const/4 v8, 0x4

    new-array v3, v8, [S

    const/4 v8, 0x0

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v9, v4

    int-to-short v9, v9

    aput-short v9, v3, v8

    const/4 v8, 0x1

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v9, v5

    int-to-short v9, v9

    aput-short v9, v3, v8

    const/4 v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    const/4 v8, 0x3

    mul-int/lit8 v9, v5, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v8

    .line 53
    .local v3, rect:[S
    invoke-virtual {p0, p1, v7, v1, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V

    .line 54
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
    .line 32
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    .line 34
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V
.end method
