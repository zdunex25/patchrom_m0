.class public Lcom/android/gallery3d/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    }
.end annotation


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .parameter "path"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "reset"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    .line 124
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 125
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 421
    new-instance v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    .line 140
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 141
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 143
    iput p5, p0, Lcom/android/gallery3d/common/BlobCache;->mVersion:I

    .line 145
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/common/BlobCache;->resetCache(II)V

    .line 151
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->closeAll()V

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .parameter "hashStart"

    .prologue
    const/16 v5, 0x400

    .line 352
    new-array v2, v5, [B

    .line 353
    .local v2, zero:[B
    iget-object v3, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 355
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 356
    .local v1, todo:I
    iget-object v3, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 357
    sub-int/2addr v0, v1

    .line 358
    goto :goto_0

    .line 359
    .end local v1           #todo:I
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 632
    if-nez p0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 634
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 335
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->updateIndexHeader()V

    .line 337
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->setActiveVariables()V

    .line 338
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/common/BlobCache;->clearHash(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/gallery3d/common/BlobCache;->syncIndex()V

    .line 340
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 14
    .parameter "file"
    .parameter "offset"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v5, p0, Lcom/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 491
    .local v5, header:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    .line 493
    .local v7, oldPosition:J
    move/from16 v0, p2

    int-to-long v11, v0

    :try_start_0
    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 494
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_0

    .line 495
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob header"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v11

    .line 498
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v5, v11}, Lcom/android/gallery3d/common/BlobCache;->readLong([BI)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 499
    .local v2, blobKey:J
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-nez v11, :cond_1

    .line 500
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 502
    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    cmp-long v11, v2, v11

    if-eqz v11, :cond_2

    .line 503
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob key does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 506
    :cond_2
    const/16 v11, 0x8

    :try_start_3
    invoke-static {v5, v11}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 507
    .local v9, sum:I
    const/16 v11, 0xc

    invoke-static {v5, v11}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v4

    .line 508
    .local v4, blobOffset:I
    move/from16 v0, p2

    if-eq v4, v0, :cond_3

    .line 509
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob offset does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 510
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 512
    :cond_3
    const/16 v11, 0x10

    :try_start_4
    invoke-static {v5, v11}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v6

    .line 513
    .local v6, length:I
    if-ltz v6, :cond_4

    iget v11, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    sub-int v11, v11, p2

    add-int/lit8 v11, v11, -0x14

    if-le v6, v11, :cond_5

    .line 514
    :cond_4
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid blob length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 515
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 517
    :cond_5
    :try_start_5
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz v11, :cond_6

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    array-length v11, v11

    if-ge v11, v6, :cond_7

    .line 518
    :cond_6
    new-array v11, v6, [B

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 521
    :cond_7
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 522
    .local v1, blob:[B
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    .line 524
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v6, :cond_8

    .line 525
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 526
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 528
    :cond_8
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v11, v6}, Lcom/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v11

    if-eq v11, v9, :cond_9

    .line 529
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob checksum does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 530
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 532
    :cond_9
    const/4 v11, 0x1

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 533
    .end local v1           #blob:[B
    .end local v2           #blobKey:J
    .end local v4           #blobOffset:I
    .end local v6           #length:I
    .end local v9           #sum:I
    :catch_0
    move-exception v10

    .line 534
    .local v10, t:Ljava/lang/Throwable;
    :try_start_7
    const-string v11, "BlobCache"

    const-string v12, "getBlob failed."

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 535
    const/4 v11, 0x0

    .line 537
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v11
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .parameter "key"
    .parameter "data"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 399
    .local v0, header:[B
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/common/BlobCache;->checkSum([B)I

    move-result v1

    .line 400
    .local v1, sum:I
    invoke-static {v0, v4, p1, p2}, Lcom/android/gallery3d/common/BlobCache;->writeLong([BIJ)V

    .line 401
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 402
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 403
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 404
    iget-object v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 405
    iget-object v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 407
    iget-object v2, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 408
    iget-object v2, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 409
    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    .line 410
    iget-object v2, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 411
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    iget-object v6, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    .line 197
    .local v6, buf:[B
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 198
    const-string v0, "BlobCache"

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 280
    .end local v6           #buf:[B
    :goto_0
    return v0

    .line 202
    .restart local v6       #buf:[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    .line 203
    const-string v0, "BlobCache"

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 204
    goto :goto_0

    .line 207
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    .line 208
    const-string v0, "BlobCache"

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    .line 213
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    .line 214
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    .line 215
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 216
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    .line 218
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 219
    .local v9, sum:I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 220
    const-string v0, "BlobCache"

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 221
    goto :goto_0

    .line 225
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 226
    const-string v0, "BlobCache"

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 227
    goto :goto_0

    .line 229
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 230
    const-string v0, "BlobCache"

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 231
    goto :goto_0

    .line 233
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    .line 234
    const-string v0, "BlobCache"

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 238
    :cond_7
    const-string v0, "BlobCache"

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 239
    goto/16 :goto_0

    .line 241
    :cond_8
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 242
    :cond_9
    const-string v0, "BlobCache"

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 243
    goto/16 :goto_0

    .line 245
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 247
    const-string v0, "BlobCache"

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 248
    goto/16 :goto_0

    .line 252
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 253
    .local v8, magic:[B
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 254
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 258
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 262
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 263
    goto/16 :goto_0

    .line 265
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 266
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 267
    goto/16 :goto_0

    .line 271
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 277
    goto/16 :goto_0

    .line 278
    .end local v6           #buf:[B
    .end local v8           #magic:[B
    .end local v9           #sum:I
    :catch_0
    move-exception v7

    .line 279
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "BlobCache"

    const-string v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 280
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9
    .parameter "key"
    .parameter "hashStart"

    .prologue
    const/4 v6, 0x0

    .line 551
    iget v7, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    int-to-long v7, v7

    rem-long v7, p1, v7

    long-to-int v4, v7

    .line 552
    .local v4, slot:I
    if-gez v4, :cond_0

    iget v7, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    .line 553
    :cond_0
    move v5, v4

    .line 555
    .local v5, slotBegin:I
    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    .line 556
    .local v3, offset:I
    iget-object v7, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 557
    .local v0, candidateKey:J
    iget-object v7, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 558
    .local v2, candidateOffset:I
    if-nez v2, :cond_2

    .line 559
    iput v3, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 564
    :goto_1
    return v6

    .line 561
    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    .line 562
    iput v3, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 563
    iput v2, p0, Lcom/android/gallery3d/common/BlobCache;->mFileOffset:I

    .line 564
    const/4 v6, 0x1

    goto :goto_1

    .line 566
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    .line 567
    const/4 v4, 0x0

    .line 569
    :cond_4
    if-ne v4, v5, :cond_1

    .line 570
    const-string v7, "BlobCache"

    const-string v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v7, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 641
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 648
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 649
    .local v1, result:J
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 650
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 649
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    :cond_0
    return-wide v1
.end method

.method private resetCache(II)V
    .locals 9
    .parameter "maxEntries"
    .parameter "maxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    .line 305
    .local v0, buf:[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 306
    invoke-static {v0, v7, p1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 307
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 308
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 309
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 310
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 311
    const/16 v1, 0x18

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 312
    invoke-virtual {p0, v0, v4, v8}, Lcom/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 317
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 318
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 319
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 321
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 322
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 323
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 324
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 285
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 286
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 290
    iput v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    .line 291
    iput v3, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    .line 293
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 294
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    .line 298
    :goto_2
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 296
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 348
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 656
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 657
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 658
    shr-int/lit8 p2, p2, 0x8

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 664
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 665
    shr-long/2addr p2, v4

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 622
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "nbytes"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 627
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/gallery3d/common/BlobCache;->syncAll()V

    .line 178
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->closeAll()V

    .line 179
    return-void
.end method

.method public insert(J[B)V
    .locals 3
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->flipRegion()V

    .line 372
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 379
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    .line 380
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->updateIndexHeader()V

    .line 381
    return-void
.end method

.method public lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 7
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-wide v3, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/android/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 456
    .local v0, insertOffset:I
    iget-wide v3, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    iget-object v3, p0, Lcom/android/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/android/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    .line 465
    iput v0, p0, Lcom/android/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 467
    :try_start_0
    iget-wide v3, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget-object v5, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    .line 468
    iget v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 469
    iget-object v3, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 470
    invoke-direct {p0}, Lcom/android/gallery3d/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "BlobCache"

    const-string v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 424
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/common/BlobCache;->lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 428
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/gallery3d/common/BlobCache;->syncIndex()V

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :goto_1
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 594
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 595
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
