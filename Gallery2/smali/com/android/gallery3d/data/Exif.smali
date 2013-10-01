.class public Lcom/android/gallery3d/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 14
    .parameter "is"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v11, 0x0

    .line 135
    :goto_0
    return v11

    .line 32
    :cond_0
    const/16 v11, 0x8

    new-array v0, v11, [B

    .line 33
    .local v0, buf:[B
    const/4 v5, 0x0

    .line 36
    .local v5, length:I
    :cond_1
    :goto_1
    const/4 v11, 0x2

    invoke-static {p0, v0, v11}, Lcom/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_7

    .line 37
    const/4 v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v7, v11, 0xff

    .line 40
    .local v7, marker:I
    const/16 v11, 0xff

    if-eq v7, v11, :cond_1

    .line 45
    const/16 v11, 0xd8

    if-eq v7, v11, :cond_1

    const/4 v11, 0x1

    if-eq v7, v11, :cond_1

    .line 49
    const/16 v11, 0xd9

    if-eq v7, v11, :cond_2

    const/16 v11, 0xda

    if-ne v7, v11, :cond_3

    .line 50
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 54
    :cond_3
    const/4 v11, 0x2

    invoke-static {p0, v0, v11}, Lcom/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_4

    .line 55
    const/4 v11, 0x0

    goto :goto_0

    .line 57
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v5

    .line 58
    const/4 v11, 0x2

    if-ge v5, v11, :cond_5

    .line 59
    const-string v11, "CameraExif"

    const-string v12, "Invalid length"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v11, 0x0

    goto :goto_0

    .line 62
    :cond_5
    add-int/lit8 v5, v5, -0x2

    .line 65
    const/16 v11, 0xe1

    if-ne v7, v11, :cond_8

    const/4 v11, 0x6

    if-lt v5, v11, :cond_8

    .line 66
    const/4 v11, 0x6

    invoke-static {p0, v0, v11}, Lcom/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    .line 67
    :cond_6
    add-int/lit8 v5, v5, -0x6

    .line 68
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    const v12, 0x45786966

    if-ne v11, v12, :cond_8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    if-nez v11, :cond_8

    .line 84
    .end local v7           #marker:I
    :cond_7
    const/16 v11, 0x8

    if-le v5, v11, :cond_f

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, offset:I
    new-array v4, v5, [B

    .line 87
    .local v4, jpeg:[B
    invoke-static {p0, v4, v5}, Lcom/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_9

    .line 88
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 76
    .end local v4           #jpeg:[B
    .end local v8           #offset:I
    .restart local v7       #marker:I
    :cond_8
    int-to-long v11, v5

    :try_start_0
    invoke-virtual {p0, v11, v12}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v5, 0x0

    .line 81
    goto/16 :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, ex:Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 92
    .end local v3           #ex:Ljava/io/IOException;
    .end local v7           #marker:I
    .restart local v4       #jpeg:[B
    .restart local v8       #offset:I
    :cond_9
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static {v4, v8, v11, v12}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v10

    .line 93
    .local v10, tag:I
    const v11, 0x49492a00

    if-eq v10, v11, :cond_a

    const v11, 0x4d4d002a

    if-eq v10, v11, :cond_a

    .line 94
    const-string v11, "CameraExif"

    const-string v12, "Invalid byte order"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 97
    :cond_a
    const v11, 0x49492a00

    if-ne v10, v11, :cond_c

    const/4 v6, 0x1

    .line 100
    .local v6, littleEndian:Z
    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-static {v4, v11, v12, v6}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    add-int/lit8 v1, v11, 0x2

    .line 101
    .local v1, count:I
    const/16 v11, 0xa

    if-lt v1, v11, :cond_b

    if-le v1, v5, :cond_d

    .line 102
    :cond_b
    const-string v11, "CameraExif"

    const-string v12, "Invalid offset"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 97
    .end local v1           #count:I
    .end local v6           #littleEndian:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_2

    .line 105
    .restart local v1       #count:I
    .restart local v6       #littleEndian:Z
    :cond_d
    add-int/2addr v8, v1

    .line 106
    sub-int/2addr v5, v1

    .line 109
    add-int/lit8 v11, v8, -0x2

    const/4 v12, 0x2

    invoke-static {v4, v11, v12, v6}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v1

    move v2, v1

    .line 110
    .end local v1           #count:I
    .local v2, count:I
    :goto_3
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_f

    const/16 v11, 0xc

    if-lt v5, v11, :cond_f

    .line 112
    const/4 v11, 0x2

    invoke-static {v4, v8, v11, v6}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v10

    .line 113
    const/16 v11, 0x112

    if-ne v10, v11, :cond_e

    .line 115
    add-int/lit8 v11, v8, 0x8

    const/4 v12, 0x2

    invoke-static {v4, v11, v12, v6}, Lcom/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v9

    .line 116
    .local v9, orientation:I
    packed-switch v9, :pswitch_data_0

    .line 126
    :pswitch_0
    const-string v11, "CameraExif"

    const-string v12, "Unsupported orientation"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 118
    :pswitch_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 120
    :pswitch_2
    const/16 v11, 0xb4

    goto/16 :goto_0

    .line 122
    :pswitch_3
    const/16 v11, 0x5a

    goto/16 :goto_0

    .line 124
    :pswitch_4
    const/16 v11, 0x10e

    goto/16 :goto_0

    .line 129
    .end local v9           #orientation:I
    :cond_e
    add-int/lit8 v8, v8, 0xc

    .line 130
    add-int/lit8 v5, v5, -0xc

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_3

    .line 134
    .end local v2           #count:I
    .end local v4           #jpeg:[B
    .end local v6           #littleEndian:Z
    .end local v8           #offset:I
    .end local v10           #tag:I
    :cond_f
    const-string v11, "CameraExif"

    const-string v12, "Orientation not found"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 140
    const/4 v1, 0x1

    .line 141
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 142
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 143
    const/4 v1, -0x1

    .line 146
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 147
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 148
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 149
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 151
    .end local v0           #length:I
    .restart local p2
    :cond_1
    return v2
.end method

.method private static read(Ljava/io/InputStream;[BI)Z
    .locals 3
    .parameter "is"
    .parameter "buf"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 156
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0
.end method
