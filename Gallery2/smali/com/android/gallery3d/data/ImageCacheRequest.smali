.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 39
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 40
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 41
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 42
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v9

    .line 54
    .local v9, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v8

    .line 56
    .local v8, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v9, v1, v2, v8}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v10

    .line 57
    .local v10, found:Z
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v7, v0

    .line 98
    :goto_0
    return-object v7

    .line 58
    :cond_0
    if-eqz v10, :cond_3

    .line 59
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v5, :cond_2

    .line 63
    iget-object v1, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 71
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-nez v7, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "ImageCacheRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode cached failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 67
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget-object v1, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 77
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 79
    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v7, v0

    goto :goto_0

    .line 77
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #found:Z
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0

    .line 82
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #found:Z
    :cond_4
    if-nez v7, :cond_5

    .line 83
    const-string v1, "ImageCacheRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode orig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    .line 84
    goto/16 :goto_0

    .line 87
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v1, v5, :cond_6

    .line 88
    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v7, v1, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 92
    :goto_2
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v7, v0

    goto/16 :goto_0

    .line 90
    :cond_6
    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v7, v1, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .line 94
    :cond_7
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 95
    .local v6, array:[B
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v7, v0

    goto/16 :goto_0

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
