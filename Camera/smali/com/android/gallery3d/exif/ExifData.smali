.class public Lcom/android/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/exif/IfdData;

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 37
    return-void
.end method

.method private getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 2
    .parameter "ifdId"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v1, p1

    .line 184
    .local v0, ifdData:Lcom/android/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    .end local v0           #ifdData:Lcom/android/gallery3d/exif/IfdData;
    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 186
    .restart local v0       #ifdData:Lcom/android/gallery3d/exif/IfdData;
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method addIfdData(Lcom/android/gallery3d/exif/IfdData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 49
    return-void
.end method

.method public addTag(S)Lcom/android/gallery3d/exif/ExifTag;
    .locals 3
    .parameter "tagId"

    .prologue
    .line 225
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfdIdFromTagId(S)I

    move-result v1

    .line 226
    .local v1, ifdId:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    .line 227
    .local v0, ifdData:Lcom/android/gallery3d/exif/IfdData;
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->buildTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 228
    .local v2, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)V

    .line 229
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 119
    instance-of v2, p1, Lcom/android/gallery3d/exif/ExifData;

    if-eqz v2, :cond_6

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/android/gallery3d/exif/ExifData;

    .line 121
    .local v0, data:Lcom/android/gallery3d/exif/ExifData;
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    move v2, v4

    .line 134
    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    :goto_0
    return v2

    .line 125
    .restart local v0       #data:Lcom/android/gallery3d/exif/ExifData;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 126
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_0

    .line 129
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    .end local v1           #i:I
    :cond_6
    move v2, v4

    .line 134
    goto :goto_0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method getIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 1
    .parameter "ifdId"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStrip(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getStripCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThumbnailData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 260
    return-void
.end method

.method public setCompressedThumbnail([B)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 65
    return-void
.end method

.method public setStripBytes(I[B)V
    .locals 3
    .parameter "index"
    .parameter "strip"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
