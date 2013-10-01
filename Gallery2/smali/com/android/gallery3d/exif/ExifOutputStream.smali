.class public Lcom/android/gallery3d/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/android/gallery3d/exif/ExifData;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/exif/ExifOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "ou"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    .line 43
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method private calculateAllOffset()I
    .locals 11

    .prologue
    .line 336
    const/16 v6, 0x8

    .line 337
    .local v6, offset:I
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    .line 338
    .local v3, ifd0:Lcom/android/gallery3d/exif/IfdData;
    invoke-direct {p0, v3, v6}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 339
    const/16 v9, -0x7897

    invoke-virtual {v3, v9}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 341
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    .line 342
    .local v0, exifIfd:Lcom/android/gallery3d/exif/IfdData;
    invoke-direct {p0, v0, v6}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 344
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v5

    .line 345
    .local v5, interIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v5, :cond_0

    .line 346
    const/16 v9, -0x5ffb

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 347
    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 350
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v1

    .line 351
    .local v1, gpsIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v1, :cond_1

    .line 352
    const/16 v9, -0x77db

    invoke-virtual {v3, v9}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 353
    invoke-direct {p0, v1, v6}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 356
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v4

    .line 357
    .local v4, ifd1:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v4, :cond_2

    .line 358
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 359
    invoke-direct {p0, v4, v6}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 363
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 364
    const/16 v9, 0x201

    invoke-virtual {v4, v9}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 365
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 375
    :cond_3
    :goto_0
    return v6

    .line 366
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 367
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v8

    .line 368
    .local v8, stripCount:I
    new-array v7, v8, [J

    .line 369
    .local v7, offsets:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 370
    int-to-long v9, v6

    aput-wide v9, v7, v2

    .line 371
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    :cond_5
    const/16 v9, 0x111

    invoke-virtual {v4, v9}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)V

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I
    .locals 7
    .parameter "ifd"
    .parameter "offset"

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr p2, v5

    .line 256
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 257
    .local v4, tags:[Lcom/android/gallery3d/exif/ExifTag;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/gallery3d/exif/ExifTag;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 258
    .local v3, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 259
    invoke-virtual {v3, p2}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 260
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v3           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 21

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v9

    .line 269
    .local v9, ifd0:Lcom/android/gallery3d/exif/IfdData;
    if-nez v9, :cond_0

    .line 270
    new-instance v9, Lcom/android/gallery3d/exif/IfdData;

    .end local v9           #ifd0:Lcom/android/gallery3d/exif/IfdData;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 271
    .restart local v9       #ifd0:Lcom/android/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 273
    :cond_0
    new-instance v5, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, -0x7897

    const/16 v18, 0x4

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 275
    .local v5, exifOffsetTag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v9, v5}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v4

    .line 279
    .local v4, exifIfd:Lcom/android/gallery3d/exif/IfdData;
    if-nez v4, :cond_1

    .line 280
    new-instance v4, Lcom/android/gallery3d/exif/IfdData;

    .end local v4           #exifIfd:Lcom/android/gallery3d/exif/IfdData;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 281
    .restart local v4       #exifIfd:Lcom/android/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v6

    .line 286
    .local v6, gpsIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v6, :cond_2

    .line 287
    new-instance v7, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, -0x77db

    const/16 v18, 0x4

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 289
    .local v7, gpsOffsetTag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v9, v7}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 293
    .end local v7           #gpsOffsetTag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v11

    .line 294
    .local v11, interIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v11, :cond_3

    .line 295
    new-instance v12, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, -0x5ffb

    const/16 v18, 0x4

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 297
    .local v12, interOffsetTag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4, v12}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 300
    .end local v12           #interOffsetTag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v10

    .line 303
    .local v10, ifd1:Lcom/android/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 304
    if-nez v10, :cond_4

    .line 305
    new-instance v10, Lcom/android/gallery3d/exif/IfdData;

    .end local v10           #ifd1:Lcom/android/gallery3d/exif/IfdData;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 306
    .restart local v10       #ifd1:Lcom/android/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 308
    :cond_4
    new-instance v15, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, 0x201

    const/16 v18, 0x4

    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 310
    .local v15, offsetTag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v10, v15}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 311
    new-instance v13, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, 0x202

    const/16 v18, 0x4

    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 313
    .local v13, lengthTag:Lcom/android/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 314
    invoke-virtual {v10, v13}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 333
    .end local v13           #lengthTag:Lcom/android/gallery3d/exif/ExifTag;
    .end local v15           #offsetTag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_5
    :goto_0
    return-void

    .line 315
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 316
    if-nez v10, :cond_7

    .line 317
    new-instance v10, Lcom/android/gallery3d/exif/IfdData;

    .end local v10           #ifd1:Lcom/android/gallery3d/exif/IfdData;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 318
    .restart local v10       #ifd1:Lcom/android/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 320
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v16

    .line 321
    .local v16, stripCount:I
    new-instance v15, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, 0x111

    const/16 v18, 0x4

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 323
    .restart local v15       #offsetTag:Lcom/android/gallery3d/exif/ExifTag;
    new-instance v13, Lcom/android/gallery3d/exif/ExifTag;

    const/16 v17, 0x117

    const/16 v18, 0x4

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    .line 325
    .restart local v13       #lengthTag:Lcom/android/gallery3d/exif/ExifTag;
    move/from16 v0, v16

    new-array v14, v0, [J

    .line 326
    .local v14, lengths:[J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    aput-wide v17, v14, v8

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 329
    :cond_8
    invoke-virtual {v13, v14}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)V

    .line 330
    invoke-virtual {v10, v15}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 331
    invoke-virtual {v10, v13}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .parameter "requestByteCount"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    .line 60
    .local v0, byteNeeded:I
    if-le p4, v0, :cond_0

    move v1, v0

    .line 61
    .local v1, byteToRead:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62
    return v1

    .end local v1           #byteToRead:I
    :cond_0
    move v1, p4

    .line 60
    goto :goto_0
.end method

.method private writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 6
    .parameter "dataOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 174
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 175
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    .line 176
    .local v2, interoperabilityIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v2, :cond_0

    .line 177
    invoke-direct {p0, v2, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    .line 180
    .local v0, gpsIfd:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v1

    .line 184
    .local v1, ifd1:Lcom/android/gallery3d/exif/IfdData;
    if-eqz v1, :cond_2

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 187
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 144
    .local v1, exifSize:I
    new-instance v0, Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v0, dataOutputStream:Lcom/android/gallery3d/exif/OrderedDataOutputStream;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 146
    const/16 v2, -0x1f

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 147
    add-int/lit8 v2, v1, 0x8

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 148
    const v2, 0x45786966

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 150
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    .line 151
    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 156
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 157
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 158
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeThumbnail(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 160
    return-void

    .line 153
    :cond_0
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    goto :goto_0
.end method

.method private writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 9
    .parameter "ifd"
    .parameter "dataOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 191
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 192
    .local v6, tags:[Lcom/android/gallery3d/exif/ExifTag;
    array-length v7, v6

    int-to-short v7, v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 193
    move-object v0, v6

    .local v0, arr$:[Lcom/android/gallery3d/exif/ExifTag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 194
    .local v5, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 195
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 196
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 197
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 198
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0, v5, p2}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v4, v7, 0x4

    .local v4, n:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 202
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    .end local v1           #i:I
    .end local v4           #n:I
    .end local v5           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getOffsetToNextIfd()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 207
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 208
    .restart local v5       #tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_3

    .line 209
    invoke-direct {p0, v5, p2}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 207
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v5           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_4
    return-void
.end method

.method private writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 6
    .parameter "tag"
    .parameter "dataOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 218
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 219
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 220
    .local v3, remain:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 221
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1           #i:I
    .end local v3           #remain:I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 226
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getLong(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 231
    .end local v1           #i:I
    .end local v2           #n:I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 232
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/android/gallery3d/exif/Rational;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 237
    .end local v1           #i:I
    .end local v2           #n:I
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    .line 238
    .local v0, buf:[B
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 239
    invoke-virtual {p2, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 242
    .end local v0           #buf:[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2       #n:I
    :goto_4
    if-ge v1, v2, :cond_0

    .line 243
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    .end local v1           #i:I
    .end local v2           #n:I
    :pswitch_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2       #n:I
    :goto_5
    if-ge v1, v2, :cond_0

    .line 248
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedShort(I)I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .parameter "dataOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 170
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setExifData(Lcom/android/gallery3d/exif/ExifData;)V
    .locals 0
    .parameter "exifData"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    .line 51
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    .local v0, buf:[B
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->write([B)V

    .line 134
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifOutputStream;->write([BII)V

    .line 139
    return-void
.end method

.method public write([BII)V
    .locals 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 68
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    if-eq v4, v6, :cond_b

    :cond_0
    if-lez p3, :cond_b

    .line 69
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v4, :cond_1

    .line 70
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v4, :cond_4

    iget v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 71
    .local v1, byteToProcess:I
    :goto_1
    sub-int/2addr p3, v1

    .line 72
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 73
    add-int/2addr p2, v1

    .line 75
    .end local v1           #byteToProcess:I
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v4, :cond_2

    .line 76
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v4, :cond_5

    iget v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    .line 77
    .restart local v1       #byteToProcess:I
    :goto_2
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    sub-int/2addr p3, v1

    .line 79
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    .line 80
    add-int/2addr p2, v1

    .line 82
    .end local v1           #byteToProcess:I
    :cond_2
    if-nez p3, :cond_6

    .line 128
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, p3

    .line 70
    goto :goto_1

    :cond_5
    move v1, p3

    .line 76
    goto :goto_2

    .line 83
    :cond_6
    iget v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-direct {p0, v6, p1, p2, p3}, Lcom/android/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 86
    .local v0, byteRead:I
    add-int/2addr p2, v0

    .line 87
    sub-int/2addr p3, v0

    .line 88
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 89
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 90
    sget-boolean v4, Lcom/android/gallery3d/exif/ExifOutputStream;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 91
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    .line 93
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeExifData()V

    goto :goto_0

    .line 98
    .end local v0           #byteRead:I
    :pswitch_1
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/android/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 99
    .restart local v0       #byteRead:I
    add-int/2addr p2, v0

    .line 100
    sub-int/2addr p3, v0

    .line 102
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 103
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 104
    .local v3, tag:S
    const/16 v4, -0x27

    if-ne v3, v4, :cond_8

    .line 105
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 109
    .end local v3           #tag:S
    :cond_8
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 110
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 112
    .local v2, marker:S
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_9

    .line 113
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 114
    iput v6, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    .line 122
    :goto_4
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 115
    :cond_9
    invoke-static {v2}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_a

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_4

    .line 119
    :cond_a
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 120
    iput v6, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    goto :goto_4

    .line 125
    .end local v0           #byteRead:I
    .end local v2           #marker:S
    :cond_b
    if-lez p3, :cond_3

    .line 126
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
