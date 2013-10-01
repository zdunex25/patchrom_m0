.class Lcom/android/gallery3d/app/Bookmarker;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    .line 466
    return-void
.end method


# virtual methods
.method public getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 488
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v9, "bookmark"

    const/16 v10, 0x64

    const/16 v11, 0x2800

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 492
    .local v1, cache:Lcom/android/gallery3d/common/BlobCache;
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v2

    .line 493
    .local v2, data:[B
    if-nez v2, :cond_1

    .line 514
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #data:[B
    :cond_0
    :goto_0
    return-object v7

    .line 495
    .restart local v1       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v2       #data:[B
    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 498
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-static {v3}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, uriString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 500
    .local v0, bookmark:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 502
    .local v4, duration:I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 506
    const/16 v8, 0x7530

    if-lt v0, v8, :cond_0

    const v8, 0x1d4c0

    if-lt v4, v8, :cond_0

    add-int/lit16 v8, v4, -0x7530

    if-gt v0, v8, :cond_0

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 511
    .end local v0           #bookmark:I
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #data:[B
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v4           #duration:I
    .end local v6           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 512
    .local v5, t:Ljava/lang/Throwable;
    const-string v8, "Bookmarker"

    const-string v9, "getBookmark failed"

    invoke-static {v8, v9, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBookmark(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 470
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v5, "bookmark"

    const/16 v6, 0x64

    const/16 v7, 0x2800

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 474
    .local v1, cache:Lcom/android/gallery3d/common/BlobCache;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 476
    .local v2, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 478
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 479
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 480
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v3

    .line 482
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Bookmarker"

    const-string v5, "setBookmark failed"

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
