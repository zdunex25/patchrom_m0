.class public Lcom/vipercn/viper4android_v2/activity/IRSUtils;
.super Ljava/lang/Object;
.source "IRSUtils.java"


# static fields
.field private static final WAV_DATA_CHUNK_ID:I = 0x64617461

.field private static final WAV_FORMAT:I = 0x57415645

.field private static final WAV_FORMAT_CHUNK_ID:I = 0x666d7420

.field private static final WAV_HEADER_CHUNK_ID:I = 0x52494646


# instance fields
.field private m_bisInputStream:Ljava/io/BufferedInputStream;

.field private m_fsiIRSStream:Ljava/io/FileInputStream;

.field private m_nBytesCount:J

.field private m_nChannels:I

.field private m_nFileLength:J

.field private m_nSampleBits:I

.field private m_nSampleType:I

.field private m_nSamplesCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    .line 51
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    .line 53
    iput-wide v2, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nFileLength:J

    .line 54
    iput-wide v2, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    .line 55
    iput-wide v2, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    .line 56
    iput v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    .line 58
    iput v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    .line 59
    iput v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    .line 63
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    .line 64
    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    .line 65
    return-void
.end method

.method private static ByteToShortLE(BB)S
    .locals 2
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 380
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static Convert_S16LE_F32([B)[B
    .locals 11
    .parameter "baS16LEData"

    .prologue
    .line 316
    array-length v9, p0

    div-int/lit8 v7, v9, 0x2

    .line 317
    .local v7, nSamplesCount:I
    mul-int/lit8 v9, v7, 0x4

    new-array v0, v9, [B

    .line 318
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3f00

    .line 320
    .local v5, invscale:D
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 321
    .local v2, bbS16Buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 322
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 323
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 324
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 330
    return-object v0

    .line 326
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 327
    .local v8, s16:S
    int-to-double v9, v8

    mul-double/2addr v9, v5

    double-to-float v3, v9

    .line 328
    .local v3, f32:F
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static Convert_S24LE_F32([B)[B
    .locals 15
    .parameter "baS24LEData"

    .prologue
    const v14, 0x7fffff

    .line 335
    array-length v12, p0

    div-int/lit8 v7, v12, 0x3

    .line 336
    .local v7, nSamplesCount:I
    mul-int/lit8 v12, v7, 0x4

    new-array v0, v12, [B

    .line 337
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3e80

    .line 339
    .local v5, invscale:D
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 340
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 341
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 356
    return-object v0

    .line 343
    :cond_0
    add-int/lit8 v12, v4, 0x0

    aget-byte v9, p0, v12

    .line 344
    .local v9, s24_b1:B
    add-int/lit8 v12, v4, 0x1

    aget-byte v10, p0, v12

    .line 345
    .local v10, s24_b2:B
    add-int/lit8 v12, v4, 0x2

    aget-byte v11, p0, v12

    .line 346
    .local v11, s24_b3:B
    and-int/lit16 v12, v9, 0xff

    and-int/lit16 v13, v10, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    and-int/lit16 v13, v11, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int v8, v12, v13

    .line 347
    .local v8, s24:I
    if-le v8, v14, :cond_1

    .line 349
    and-int/2addr v8, v14

    .line 350
    sub-int v8, v14, v8

    .line 351
    neg-int v8, v8

    .line 353
    :cond_1
    int-to-double v12, v8

    mul-double/2addr v12, v5

    double-to-float v2, v12

    .line 354
    .local v2, f32:F
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 341
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    goto :goto_0
.end method

.method private static Convert_S32LE_F32([B)[B
    .locals 11
    .parameter "baS32LEData"

    .prologue
    .line 361
    array-length v9, p0

    div-int/lit8 v7, v9, 0x4

    .line 362
    .local v7, nSamplesCount:I
    mul-int/lit8 v9, v7, 0x4

    new-array v0, v9, [B

    .line 363
    .local v0, baF32Data:[B
    const-wide/high16 v5, 0x3e00

    .line 365
    .local v5, invscale:D
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 366
    .local v2, bbS32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 367
    .local v1, bbF32Buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 368
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 369
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 375
    return-object v0

    .line 371
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 372
    .local v8, s32:I
    int-to-double v9, v8

    mul-double/2addr v9, v5

    double-to-float v3, v9

    .line 373
    .local v3, f32:F
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static HashIRS([BI)J
    .locals 14
    .parameter "baArray"
    .parameter "nLength"

    .prologue
    .line 17
    if-nez p0, :cond_0

    const-wide/16 v10, 0x0

    .line 42
    :goto_0
    return-wide v10

    .line 18
    :cond_0
    array-length v10, p0

    if-ge v10, p1, :cond_1

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 19
    :cond_1
    if-gtz p1, :cond_2

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 22
    :cond_2
    const/16 v10, 0x100

    new-array v4, v10, [J

    .line 23
    .local v4, crcTable:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v10, 0x100

    if-lt v7, v10, :cond_3

    .line 35
    const-wide/16 v2, -0x1

    .line 36
    .local v2, crcResult:J
    const/4 v7, 0x0

    :goto_2
    if-lt v7, p1, :cond_6

    .line 42
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v2

    goto :goto_0

    .line 25
    .end local v2           #crcResult:J
    :cond_3
    int-to-long v5, v7

    .line 26
    .local v5, crcTblVal:J
    const/16 v8, 0x8

    .local v8, j:I
    :goto_3
    if-gtz v8, :cond_4

    .line 31
    aput-wide v5, v4, v7

    .line 23
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 28
    :cond_4
    const-wide/16 v10, 0x1

    and-long/2addr v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    shr-long v10, v5, v10

    const-wide v12, 0xedb88320L

    xor-long v5, v10, v12

    .line 26
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 29
    :cond_5
    const/4 v10, 0x1

    shr-long/2addr v5, v10

    goto :goto_4

    .line 38
    .end local v5           #crcTblVal:J
    .end local v8           #j:I
    .restart local v2       #crcResult:J
    :cond_6
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    int-to-long v0, v10

    .line 39
    .local v0, bData:J
    xor-long v10, v2, v0

    long-to-int v10, v10

    and-int/lit16 v9, v10, 0xff

    .line 40
    .local v9, nTblIndex:I
    const/16 v10, 0x8

    shr-long v10, v2, v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    aget-wide v12, v4, v9

    xor-long v2, v10, v12

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private static ReadUnsignedInt(Ljava/io/BufferedInputStream;)I
    .locals 6
    .parameter "bisInput"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 385
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 386
    .local v0, baBuffer:[B
    const/4 v1, -0x1

    .line 387
    .local v1, dwReturn:I
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 389
    if-ne v1, v3, :cond_0

    .line 392
    :goto_0
    return v3

    .line 388
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    move v3, v4

    goto :goto_0

    .line 392
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 393
    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 392
    or-int/2addr v3, v4

    .line 394
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 392
    or-int/2addr v3, v4

    .line 395
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 392
    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private static ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I
    .locals 6
    .parameter "bisInput"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 401
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 402
    .local v0, baBuffer:[B
    const/4 v1, -0x1

    .line 403
    .local v1, dwReturn:I
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    if-ne v1, v3, :cond_0

    .line 408
    :goto_0
    return v3

    .line 404
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    move v3, v4

    goto :goto_0

    .line 408
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    .line 409
    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 408
    or-int/2addr v3, v4

    .line 410
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 408
    or-int/2addr v3, v4

    .line 411
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 408
    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private static ReadUnsignedShortLE(Ljava/io/BufferedInputStream;)S
    .locals 7
    .parameter "bisInput"

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 417
    new-array v0, v5, [B

    .line 418
    .local v0, baBuffer:[B
    const/4 v1, -0x1

    .line 419
    .local v1, dwReturn:I
    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    if-ne v1, v3, :cond_0

    .line 422
    :goto_0
    return v3

    .line 420
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    move v3, v4

    goto :goto_0

    .line 422
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    aget-byte v3, v0, v4

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v3, v4}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ByteToShortLE(BB)S

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public GetByteCount()I
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    long-to-int v0, v0

    return v0
.end method

.method public GetChannels()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    return v0
.end method

.method public GetSampleCount()I
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    long-to-int v0, v0

    return v0
.end method

.method public LoadIRS(Ljava/lang/String;)Z
    .locals 16
    .parameter "szIRSPathName"

    .prologue
    .line 90
    if-nez p1, :cond_0

    const/4 v12, 0x0

    .line 234
    :goto_0
    return v12

    .line 91
    :cond_0
    const-string v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 92
    :cond_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 96
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nFileLength:J

    .line 105
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nFileLength:J

    const-wide/16 v14, 0x10

    cmp-long v12, v12, v14

    if-gtz v12, :cond_3

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 108
    const/4 v12, 0x0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    .line 100
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    .line 101
    const-string v12, "ViPER4Android"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "LoadIRS, FileNotFoundException, msg = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v12, 0x0

    goto :goto_0

    .line 112
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3
    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    const/16 v14, 0x1000

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v10

    .line 114
    .local v10, nHeaderId:I
    const v12, 0x52494646

    if-eq v10, v12, :cond_4

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 117
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 119
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nFileLength:J

    .line 120
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nFileLength:J

    const-wide/16 v14, 0x10

    cmp-long v12, v12, v14

    if-gtz v12, :cond_5

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 123
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 125
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v7

    .line 126
    .local v7, nFormat:I
    const v12, 0x57415645

    if-eq v7, v12, :cond_6

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 129
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 133
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v8

    .line 134
    .local v8, nFormatId:I
    const v12, 0x666d7420

    if-eq v8, v12, :cond_7

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 137
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 139
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v9

    .line 140
    .local v9, nFormatSize:I
    const/16 v12, 0x10

    if-ge v9, v12, :cond_8

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 143
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 145
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v2

    .line 146
    .local v2, nAudioFormat:I
    const/4 v12, 0x1

    if-eq v2, v12, :cond_9

    const/4 v12, 0x3

    if-eq v2, v12, :cond_9

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 150
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    .line 153
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_b

    .line 156
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 157
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 159
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v11

    .line 160
    .local v11, nSampleRate:I
    const/16 v12, 0x1f40

    if-lt v11, v12, :cond_c

    const v12, 0x2ee00

    if-le v11, v12, :cond_d

    .line 163
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 164
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 166
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v4

    .line 167
    .local v4, nByteRate:I
    const-string v12, "ViPER4Android"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IRS byterate = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v3

    .line 169
    .local v3, nBlockAlign:I
    const-string v12, "ViPER4Android"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IRS blockalign = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    .line 174
    const/4 v12, 0x1

    if-ne v2, v12, :cond_11

    .line 176
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    .line 200
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v5

    .line 201
    .local v5, nDataId:I
    const v12, 0x64617461

    if-eq v5, v12, :cond_13

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 204
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 177
    .end local v5           #nDataId:I
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    const/16 v13, 0x18

    if-ne v12, v13, :cond_f

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    goto :goto_1

    .line 178
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    const/16 v13, 0x20

    if-ne v12, v13, :cond_10

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    goto :goto_1

    .line 182
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 183
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 188
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    const/16 v13, 0x20

    if-ne v12, v13, :cond_12

    .line 189
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    goto :goto_1

    .line 193
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 194
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v5       #nDataId:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v6

    .line 207
    .local v6, nDataSize:I
    if-lez v6, :cond_14

    const/high16 v12, 0x40

    if-le v6, v12, :cond_15

    .line 210
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 211
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 216
    :cond_15
    int-to-long v12, v6

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    .line 217
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    div-int/lit8 v14, v14, 0x8

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    .line 218
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    const-wide/16 v14, 0x10

    cmp-long v12, v12, v14

    if-gez v12, :cond_16

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 222
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 224
    :cond_16
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    div-int/lit8 v15, v15, 0x8

    mul-int/2addr v14, v15

    int-to-long v14, v14

    rem-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_17

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 227
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 231
    :cond_17
    const-string v12, "ViPER4Android"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IRS ["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] opened"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v12, "ViPER4Android"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IRS attr = ["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public ReadEntireData()[B
    .locals 12

    .prologue
    const/16 v8, 0x1000

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 239
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    .line 296
    :goto_0
    return-object v1

    .line 240
    :cond_1
    iget v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    iget v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    const/4 v7, 0x4

    if-le v6, v7, :cond_3

    :cond_2
    move-object v1, v5

    goto :goto_0

    .line 243
    :cond_3
    new-array v1, v8, [B

    .line 244
    .local v1, baData:[B
    const/4 v4, 0x0

    .line 249
    .local v4, nReadLength:I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    const/16 v7, 0x1000

    invoke-virtual {v6, v1, v4, v7}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 250
    .local v3, nRead:I
    if-gez v3, :cond_4

    .line 262
    .end local v3           #nRead:I
    :goto_2
    new-array v2, v4, [B

    .line 263
    .local v2, baNewData:[B
    invoke-static {v1, v11, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object v1, v2

    .line 267
    iget-wide v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    array-length v8, v1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 270
    array-length v6, v1

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    .line 271
    iget-wide v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    iget v8, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iget v8, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    div-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSamplesCount:J

    .line 272
    iget-wide v6, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    iget v8, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nChannels:I

    iget v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleBits:I

    div-int/lit8 v9, v9, 0x8

    mul-int/2addr v8, v9

    int-to-long v8, v8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    move-object v1, v5

    .line 275
    goto :goto_0

    .line 251
    .end local v2           #baNewData:[B
    .restart local v3       #nRead:I
    :cond_4
    add-int/2addr v4, v3

    .line 253
    add-int/lit16 v6, v4, 0x1000

    :try_start_1
    new-array v2, v6, [B

    .line 254
    .restart local v2       #baNewData:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    move-object v1, v2

    goto :goto_1

    .line 278
    .end local v3           #nRead:I
    :cond_5
    iget-wide v5, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    array-length v7, v1

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 281
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IRSUtils: We got some garbage data, header = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", read = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IRSUtils: So lets discard some data, length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v1

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-wide v5, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 284
    .local v0, baActualData:[B
    iget-wide v5, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nBytesCount:J

    long-to-int v5, v5

    invoke-static {v1, v11, v0, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    move-object v1, v0

    .line 289
    .end local v0           #baActualData:[B
    :cond_6
    iget v5, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_nSampleType:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 291
    :pswitch_0
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Convert_S16LE_F32([B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 292
    :pswitch_1
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Convert_S24LE_F32([B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 293
    :pswitch_2
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Convert_S32LE_F32([B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 257
    .end local v2           #baNewData:[B
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :goto_0
    iput-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_bisInputStream:Ljava/io/BufferedInputStream;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :goto_1
    iput-object v1, p0, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->m_fsiIRSStream:Ljava/io/FileInputStream;

    .line 86
    :cond_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    .line 70
    return-void
.end method
