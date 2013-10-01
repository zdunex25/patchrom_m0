.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractTrackEncryptionBox.java"


# instance fields
.field defaultAlgorithmId:I

.field defaultIvSize:I

.field default_KID:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 53
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    .line 54
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    .line 56
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    .line 79
    .local v0, that:Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 80
    :cond_4
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 62
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 63
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 64
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDefaultIvSize()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    .line 89
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 91
    return v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
