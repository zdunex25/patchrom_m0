.class public Lcom/android/gallery3d/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "fd"
    .parameter "shareable"

    .prologue
    .line 229
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "filePath"
    .parameter "shareable"

    .prologue
    .line 219
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "shareable"

    .prologue
    .line 201
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset = %s, length = %s, bytes = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 83
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .restart local p4
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 85
    invoke-static {p4}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 86
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"
    .parameter "pool"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 251
    if-nez p5, :cond_1

    .line 252
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 273
    :cond_0
    :goto_0
    return-object v6

    .line 255
    :cond_1
    if-nez p4, :cond_2

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .restart local p4
    :cond_2
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v1, :cond_3

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 257
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 258
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v0, v1, :cond_4

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 261
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 262
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v6, :cond_0

    .line 263
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 268
    .local v7, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    throw v7

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    move-object v0, v8

    .line 258
    goto :goto_1

    .line 270
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 272
    iput-object v8, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 273
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "bytes"
    .parameter "options"

    .prologue
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 93
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 95
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public static decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "data"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 170
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .restart local p2
    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    array-length v1, p1

    invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 175
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    :cond_1
    :goto_0
    return-object v0

    .line 176
    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    .line 179
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 181
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    invoke-static {p2}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 184
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"
    .parameter "fd"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 116
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .restart local p2
    :cond_0
    new-instance v6, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v6, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v6}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 119
    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 121
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-object v5

    .line 123
    :cond_2
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 124
    .local v4, w:I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 126
    .local v1, h:I
    if-ne p4, v8, :cond_5

    .line 129
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 130
    .local v3, scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    const v0, 0x9c400

    .line 135
    .local v0, MAX_PIXEL_COUNT:I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v4, v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v1, v7

    mul-int/2addr v6, v7

    const v7, 0x9c400

    if-le v6, v7, :cond_3

    .line 136
    const v6, 0x491c4000

    mul-int v7, v4, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    invoke-static {v6}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    invoke-static {p2}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 148
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 149
    .local v2, result:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 153
    int-to-float v6, p3

    if-ne p4, v8, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    div-float v3, v6, v5

    .line 157
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    invoke-static {v2, v3, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    :cond_4
    invoke-static {v2}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 141
    .end local v2           #result:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_5
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 142
    .restart local v3       #scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 153
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "filePath"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 105
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 110
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "DecodeUtils"

    invoke-static {v4, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    const/4 v4, 0x0

    .line 110
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 106
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pool"
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->isOneSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 312
    iget v0, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "options"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 58
    :cond_0
    return-void
.end method
