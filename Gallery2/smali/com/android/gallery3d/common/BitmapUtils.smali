.class public Lcom/android/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 239
    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .parameter "bitmap"
    .parameter "quality"

    .prologue
    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 244
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 71
    if-ne p3, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-ne p3, v4, :cond_2

    .line 77
    .local v0, lowerBound:I
    :goto_1
    if-eq p2, v4, :cond_0

    .line 80
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    .local v1, sampleSize:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 74
    .end local v0           #lowerBound:I
    .end local v1           #sampleSize:I
    :cond_2
    mul-int v2, p0, p1

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method public static computeSampleSize(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v2, 0x1

    .line 109
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 110
    const/high16 v1, 0x3f80

    div-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 111
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1
    return v1

    .line 109
    .end local v0           #initialSize:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    .restart local v0       #initialSize:I
    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    .line 64
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    .line 99
    const/high16 v2, 0x3f80

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v0, v2

    .line 100
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 102
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 89
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 90
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 92
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    .line 196
    :try_start_0
    const-string v0, "android.media.MediaMetadataRetriever"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_d

    move-result-object v3

    .line 197
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v2

    .line 199
    :try_start_2
    const-string v0, "setDataSource"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 200
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-gt v0, v4, :cond_1

    .line 204
    const-string v0, "captureFrame"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_11

    .line 229
    if-eqz v2, :cond_0

    .line 230
    :try_start_3
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1f

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    :try_start_4
    const-string v0, "getEmbeddedPicture"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 207
    if-eqz v0, :cond_2

    .line 208
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_11

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2

    .line 229
    if-eqz v2, :cond_0

    .line 230
    :try_start_5
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0

    .line 211
    :cond_2
    :try_start_6
    const-string v0, "getFrameAtTime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_11

    .line 229
    if-eqz v2, :cond_0

    .line 230
    :try_start_7
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 232
    :catch_1
    move-exception v1

    goto :goto_0

    .line 213
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 229
    :goto_1
    if-eqz v0, :cond_3

    .line 230
    :try_start_8
    const-string v3, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1c

    :cond_3
    :goto_2
    move-object v0, v1

    .line 235
    goto :goto_0

    .line 215
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 229
    :goto_3
    if-eqz v2, :cond_3

    .line 230
    :try_start_9
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 232
    :catch_4
    move-exception v0

    goto :goto_2

    .line 217
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 218
    :goto_4
    :try_start_a
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    :try_start_b
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    .line 232
    :catch_6
    move-exception v0

    goto :goto_2

    .line 219
    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 220
    :goto_5
    :try_start_c
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    :try_start_d
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_2

    .line 232
    :catch_8
    move-exception v0

    goto :goto_2

    .line 221
    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 222
    :goto_6
    :try_start_e
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    :try_start_f
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_2

    .line 232
    :catch_a
    move-exception v0

    goto :goto_2

    .line 223
    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 224
    :goto_7
    :try_start_10
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    :try_start_11
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_2

    .line 232
    :catch_c
    move-exception v0

    goto/16 :goto_2

    .line 225
    :catch_d
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 226
    :goto_8
    :try_start_12
    const-string v4, "BitmapUtils"

    const-string v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    :try_start_13
    const-string v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    goto/16 :goto_2

    .line 232
    :catch_e
    move-exception v0

    goto/16 :goto_2

    .line 228
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 229
    :goto_9
    if-eqz v2, :cond_4

    .line 230
    :try_start_14
    const-string v1, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    .line 233
    :cond_4
    :goto_a
    throw v0

    .line 232
    :catch_f
    move-exception v1

    goto :goto_a

    .line 228
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 225
    :catch_10
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_11
    move-exception v0

    goto :goto_8

    .line 223
    :catch_12
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_13
    move-exception v0

    goto :goto_7

    .line 221
    :catch_14
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_15
    move-exception v0

    goto/16 :goto_6

    .line 219
    :catch_16
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catch_17
    move-exception v0

    goto/16 :goto_5

    .line 217
    :catch_18
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    :catch_19
    move-exception v0

    goto/16 :goto_4

    .line 215
    :catch_1a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    :catch_1b
    move-exception v0

    goto/16 :goto_3

    .line 232
    :catch_1c
    move-exception v0

    goto/16 :goto_2

    .line 213
    :catch_1d
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_1

    :catch_1e
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_1

    .line 232
    :catch_1f
    move-exception v1

    goto/16 :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 133
    .local v0, config:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 134
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    :cond_0
    return-object v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 256
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 258
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 251
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "size"
    .parameter "recycle"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 151
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 152
    .local v1, h:I
    if-ne v6, p1, :cond_0

    if-ne v1, p1, :cond_0

    .line 167
    .end local p0
    :goto_0
    return-object p0

    .line 156
    .restart local p0
    :cond_0
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 158
    .local v4, scale:F
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 159
    .local v5, target:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 160
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 161
    .local v2, height:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v0, canvas:Landroid/graphics/Canvas;
    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v5

    .line 167
    goto :goto_0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scale"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 119
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 120
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 128
    .end local p0
    :goto_0
    return-object p0

    .line 122
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 123
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 126
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v3

    .line 128
    goto :goto_0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 142
    .local v2, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 143
    .local v1, srcHeight:I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 145
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 146
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "source"
    .parameter "rotation"
    .parameter "recycle"

    .prologue
    const/4 v1, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 187
    .end local p0
    :goto_0
    return-object p0

    .line 181
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 182
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 183
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 186
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v7

    .line 187
    goto :goto_0
.end method
