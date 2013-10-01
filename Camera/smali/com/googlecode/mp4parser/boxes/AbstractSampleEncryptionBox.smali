.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractSampleEncryptionBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    }
.end annotation


# instance fields
.field algorithmId:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field ivSize:I

.field kid:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 24
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    .line 25
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    .line 31
    return-void

    .line 26
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 9
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 43
    const/4 v0, -0x1

    .line 44
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 45
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    .line 46
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    .line 47
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    .line 49
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 64
    :goto_0
    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_4

    .line 65
    new-instance v5, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    invoke-direct {v5, p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V

    .line 66
    if-gez v2, :cond_2

    const/16 v0, 0x8

    :goto_1
    new-array v0, v0, [B

    iput-object v0, v5, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    .line 67
    iget-object v0, v5, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    .line 69
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 70
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v5, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    .line 71
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 72
    iget-object v0, v5, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->createPair(IJ)Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    .line 51
    :cond_1
    const-string v1, "/moov[0]/trak/tkhd"

    invoke-static {p0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    move-object v1, v0

    .line 53
    check-cast v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v1

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-interface {v1, v6}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    .line 54
    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    .line 55
    if-nez v1, :cond_5

    .line 56
    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/uuid[0]"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    .line 58
    :goto_4
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->getDefaultIvSize()I

    move-result v0

    :goto_5
    move v2, v0

    .line 59
    goto :goto_3

    :cond_2
    move v0, v2

    .line 66
    goto/16 :goto_1

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v3

    .line 77
    goto/16 :goto_0

    .line 78
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    if-ne p0, p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 308
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 311
    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    .line 313
    .local v0, that:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 314
    goto :goto_0

    .line 316
    :cond_4
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 317
    goto :goto_0

    .line 319
    :cond_5
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 320
    goto :goto_0

    .line 319
    :cond_7
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-nez v3, :cond_6

    .line 322
    :cond_8
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 323
    goto :goto_0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 188
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 9
    .parameter "byteBuffer"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 148
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    :cond_0
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 152
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 153
    .local v0, entry:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    new-array v3, v5, [B

    .line 155
    .local v3, ivFull:[B
    iget-object v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget-object v8, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v8, v8

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    .end local v3           #ivFull:[B
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 163
    iget-object v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    .line 164
    .local v4, pair:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    iget v5, v4, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 165
    iget-wide v5, v4, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 159
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pair:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    :cond_2
    iget-object v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 169
    .end local v0           #entry:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    :cond_3
    return-void
.end method

.method protected getContentSize()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    .line 173
    const-wide/16 v0, 0x4

    .line 174
    .local v0, contentSize:J
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    add-long/2addr v0, v6

    .line 176
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 178
    :cond_0
    add-long/2addr v0, v6

    .line 179
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 180
    .local v2, entry:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 182
    .end local v2           #entry:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    :cond_1
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 331
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    .line 332
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    add-int v0, v1, v3

    .line 333
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 334
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 335
    return v0

    :cond_1
    move v1, v2

    .line 333
    goto :goto_0
.end method

.method public isOverrideTrackEncryptionBoxParameters()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubSampleEncryption()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
