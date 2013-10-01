.class public Lcom/android/gallery3d/ui/BitmapTileProvider;
.super Ljava/lang/Object;
.source "BitmapTileProvider.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMipmaps:[Landroid/graphics/Bitmap;

.field private mRecycled:Z

.field private final mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "maxBackupSize"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 44
    :cond_0
    const/high16 v1, 0x3f00

    invoke-static {p1, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .line 50
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 51
    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    const/4 v6, 0x0

    .line 76
    shr-int/2addr p2, p1

    .line 77
    shr-int/2addr p3, p1

    .line 78
    mul-int/lit8 v7, p5, 0x2

    add-int v5, p4, v7

    .line 80
    .local v5, size:I
    if-nez p6, :cond_0

    move-object v4, v6

    .line 81
    .local v4, result:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v4, :cond_1

    .line 82
    iget-object v7, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 87
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v7, p1

    .line 88
    .local v1, mipmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, canvas:Landroid/graphics/Canvas;
    neg-int v7, p2

    add-int v2, v7, p5

    .line 90
    .local v2, offsetX:I
    neg-int v7, p3

    add-int v3, v7, p5

    .line 91
    .local v3, offsetY:I
    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    return-object v4

    .line 80
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #mipmap:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #result:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p6}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 84
    .restart local v4       #result:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1
.end method
