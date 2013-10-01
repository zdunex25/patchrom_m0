.class public Lcom/android/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/android/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/android/gallery3d/exif/ExifParser$ImageEvent;
    }
.end annotation


# instance fields
.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

.field private mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

.field private mTag:Lcom/android/gallery3d/exif/ExifTag;

.field private final mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "inputStream"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 139
    iput v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 147
    iput-boolean v3, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 149
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 174
    new-instance v2, Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    .line 175
    iput p2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    .line 176
    iget-boolean v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->parseTiffHeader()V

    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 180
    .local v0, offset:J
    invoke-direct {p0, v3, v0, v1}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v1

    invoke-direct {p0, v5, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 487
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v1

    invoke-direct {p0, v6, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 492
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 497
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 502
    :sswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_0

    .line 507
    :sswitch_5
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    if-ne v1, v3, :cond_2

    .line 511
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedShort(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 509
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 517
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v3, p1, v4}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 522
    :sswitch_6
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7897 -> :sswitch_0
        -0x77db -> :sswitch_1
        -0x5ffb -> :sswitch_2
        0x111 -> :sswitch_5
        0x117 -> :sswitch_6
        0x201 -> :sswitch_3
        0x202 -> :sswitch_4
    .end sparse-switch
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .parameter "ifdType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 154
    :pswitch_0
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 156
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 158
    :pswitch_2
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 160
    :pswitch_3
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 162
    :pswitch_4
    iget v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 310
    iget v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    packed-switch v1, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 312
    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 318
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifParser;
    .locals 2
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/android/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 596
    .local v0, byteOrder:S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    .line 605
    new-instance v1, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 601
    :cond_1
    new-instance v1, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_2
    return-void
.end method

.method private readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 6
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 590
    :goto_0
    :pswitch_0
    return-void

    .line 536
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    .line 537
    .local v0, buf:[B
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 538
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)V

    goto :goto_0

    .line 542
    .end local v0           #buf:[B
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v3, v4, [J

    .line 547
    .local v3, value:[J
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v3

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)V

    goto :goto_0

    .line 555
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #value:[J
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v3, v4, [Lcom/android/gallery3d/exif/Rational;

    .line 556
    .local v3, value:[Lcom/android/gallery3d/exif/Rational;
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v2, v3

    .restart local v2       #n:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v4

    aput-object v4, v3, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 559
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)V

    goto :goto_0

    .line 564
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #value:[Lcom/android/gallery3d/exif/Rational;
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v3, v4, [I

    .line 565
    .local v3, value:[I
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v2, v3

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v1

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 568
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)V

    goto :goto_0

    .line 573
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #value:[I
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v3, v4, [I

    .line 574
    .restart local v3       #value:[I
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v2, v3

    .restart local v2       #n:I
    :goto_4
    if-ge v1, v2, :cond_3

    .line 575
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v4

    aput v4, v3, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 577
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)V

    goto :goto_0

    .line 582
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #value:[I
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v3, v4, [Lcom/android/gallery3d/exif/Rational;

    .line 583
    .local v3, value:[Lcom/android/gallery3d/exif/Rational;
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v2, v3

    .restart local v2       #n:I
    :goto_5
    if-ge v1, v2, :cond_4

    .line 584
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readRational()Lcom/android/gallery3d/exif/Rational;

    move-result-object v4

    aput-object v4, v3, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 586
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/ExifTag;->setValue([Lcom/android/gallery3d/exif/Rational;)V

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    .line 451
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v7

    .line 452
    .local v7, tagId:S
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 453
    .local v0, dataFormat:S
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    .line 454
    .local v2, numOfComp:J
    cmp-long v8, v2, v10

    if-lez v8, :cond_0

    .line 455
    new-instance v8, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v9, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 458
    :cond_0
    new-instance v6, Lcom/android/gallery3d/exif/ExifTag;

    long-to-int v8, v2

    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-direct {v6, v7, v0, v8, v9}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 459
    .local v6, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v6}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v1

    .line 460
    .local v1, dataSize:I
    const/4 v8, 0x4

    if-le v1, v8, :cond_2

    .line 461
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 462
    .local v4, offset:J
    cmp-long v8, v4, v10

    if-lez v8, :cond_1

    .line 463
    new-instance v8, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v9, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v8, v9}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 466
    :cond_1
    long-to-int v8, v4

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 471
    .end local v4           #offset:J
    :goto_0
    return-object v6

    .line 468
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 469
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v9, v1, 0x4

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    goto :goto_0
.end method

.method private registerCompressedImage(J)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .parameter "ifdType"
    .parameter "offset"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .parameter "stripIndex"
    .parameter "offset"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, -0x1f

    .line 611
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 614
    .local v0, dataStream:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_0

    .line 615
    new-instance v3, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v4, "Invalid JPEG format"

    invoke-direct {v3, v4}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 620
    .local v2, marker:S
    :goto_0
    if-eq v2, v8, :cond_2

    const/16 v4, -0x27

    if-eq v2, v4, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_2

    .line 621
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 622
    .local v1, length:I
    add-int/lit8 v4, v1, -0x2

    int-to-long v4, v4

    add-int/lit8 v6, v1, -0x2

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 623
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 625
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 626
    goto :goto_0

    .line 628
    .end local v1           #length:I
    :cond_2
    if-eq v2, v8, :cond_4

    .line 634
    :cond_3
    :goto_1
    return v3

    .line 631
    :cond_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 634
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const v5, 0x45786966

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private skipTo(I)V
    .locals 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getCurrentIfd()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method public getStripIndex()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method public getStripSize()I
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v1, v1, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedShort(I)I

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/android/gallery3d/exif/ExifTag;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v1, v1, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method public next()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 221
    iget-boolean v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v9, :cond_1

    move v7, v8

    .line 276
    :cond_0
    :goto_0
    return v7

    .line 224
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    .line 225
    .local v5, offset:I
    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v0, v9, v10

    .line 226
    .local v0, endOfTags:I
    if-ge v5, v0, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 228
    iget-boolean v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v8, :cond_0

    .line 229
    iget-object v8, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v8}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_0

    .line 232
    :cond_2
    if-ne v5, v0, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    .line 235
    .local v3, ifdOffset:J
    iget v9, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v9, :cond_5

    .line 236
    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 237
    :cond_3
    cmp-long v9, v3, v11

    if-eqz v9, :cond_4

    .line 238
    invoke-direct {p0, v7, v3, v4}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 247
    .end local v3           #ifdOffset:J
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v7

    if-eqz v7, :cond_a

    .line 248
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 249
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, event:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 251
    instance-of v7, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v7, :cond_7

    move-object v7, v2

    .line 252
    check-cast v7, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v7, v7, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    .line 253
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v7}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 255
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 256
    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;

    .end local v2           #event:Ljava/lang/Object;
    iget-boolean v7, v2, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v7, :cond_6

    .line 257
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 242
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v3       #ifdOffset:J
    :cond_5
    cmp-long v7, v3, v11

    if-eqz v7, :cond_4

    .line 243
    new-instance v7, Lcom/android/gallery3d/exif/ExifInvalidFormatException;

    const-string v8, "Invalid link to next IFD"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    .end local v3           #ifdOffset:J
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 261
    .restart local v2       #event:Ljava/lang/Object;
    :cond_7
    instance-of v7, v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v7, :cond_8

    .line 262
    check-cast v2, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    .end local v2           #event:Ljava/lang/Object;
    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    .line 263
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v7, v7, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .restart local v2       #event:Ljava/lang/Object;
    :cond_8
    move-object v6, v2

    .line 265
    check-cast v6, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    .line 266
    .local v6, tagEvent:Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
    iget-object v7, v6, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    iput-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 267
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v7

    const/4 v9, 0x7

    if-eq v7, v9, :cond_9

    .line 268
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 269
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v7}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 271
    :cond_9
    iget-boolean v7, v6, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v7, :cond_4

    .line 272
    const/4 v7, 0x2

    goto/16 :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2           #event:Ljava/lang/Object;
    .end local v6           #tagEvent:Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
    :cond_a
    move v7, v8

    .line 276
    goto/16 :goto_0
.end method

.method public read([B)I
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readRational()Lcom/android/gallery3d/exif/Rational;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v1

    .line 711
    .local v1, nomi:I
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    .line 712
    .local v0, denomi:I
    new-instance v2, Lcom/android/gallery3d/exif/Rational;

    int-to-long v3, v1

    int-to-long v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method public readString(I)Ljava/lang/String;
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    if-lez p1, :cond_0

    .line 658
    new-array v0, p1, [B

    .line 659
    .local v0, buf:[B
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 660
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, -0x1

    const-string v4, "UTF8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 662
    .end local v0           #buf:[B
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedRational()Lcom/android/gallery3d/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 695
    .local v2, nomi:J
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 696
    .local v0, denomi:J
    new-instance v4, Lcom/android/gallery3d/exif/Rational;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 287
    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    .line 288
    .local v0, endOfTags:I
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    .line 289
    .local v3, offset:I
    if-le v3, v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_2

    .line 291
    :goto_1
    if-ge v3, v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->readTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    .line 293
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 294
    add-int/lit8 v3, v3, 0xc

    goto :goto_1

    .line 297
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v1

    .line 301
    .local v1, ifdOffset:J
    iget v4, p0, Lcom/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 304
    invoke-direct {p0, v6, v1, v2}, Lcom/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method
