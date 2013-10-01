.class public Lcom/android/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    .locals 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v3

    .line 34
    .local v3, parser:Lcom/android/gallery3d/exif/ExifParser;
    new-instance v2, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 36
    .local v2, exifData:Lcom/android/gallery3d/exif/ExifData;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v1

    .line 37
    .local v1, event:I
    :goto_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    .line 38
    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_1
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v5, Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    goto :goto_1

    .line 43
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 44
    .local v4, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 51
    .end local v4           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 52
    .restart local v4       #tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 53
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v5

    new-array v0, v5, [B

    .line 54
    .local v0, buf:[B
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 55
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([B)V

    .line 57
    .end local v0           #buf:[B
    :cond_1
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 60
    .end local v4           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v5

    new-array v0, v5, [B

    .line 61
    .restart local v0       #buf:[B
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 62
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 65
    .end local v0           #buf:[B
    :pswitch_4
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v5

    new-array v0, v5, [B

    .line 66
    .restart local v0       #buf:[B
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    .line 67
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Lcom/android/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 72
    .end local v0           #buf:[B
    :cond_2
    return-object v2

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
