.class public Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.source "ImageWithIcon.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->mMargin:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->getWidth()I

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->mMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->getWidth()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .local v0, d:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 49
    .end local v0           #d:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method
