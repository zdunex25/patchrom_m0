.class public Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
.super Lcom/coremedia/iso/boxes/ChunkOffsetBox;
.source "StaticChunkOffsetBox.java"


# instance fields
.field private chunkOffsets:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "stco"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    .line 36
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 53
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 54
    .local v0, entryCount:I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    .line 55
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public getChunkOffsets()[J
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "byteBuffer"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 64
    iget-object v5, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    array-length v5, v5

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 65
    iget-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v1, v0, v3

    .line 66
    .local v1, chunkOffset:J
    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1           #chunkOffset:J
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public setChunkOffsets([J)V
    .locals 0
    .parameter "chunkOffsets"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->chunkOffsets:[J

    .line 48
    return-void
.end method
