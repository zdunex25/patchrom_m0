.class public Lcom/coremedia/iso/boxes/SyncSampleBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SyncSampleBox.java"


# instance fields
.field private sampleNumber:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "stss"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 56
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 58
    .local v0, entryCount:I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "byteBuffer"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 68
    iget-object v5, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v5, v5

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 70
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    .local v2, arr$:[J
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 71
    .local v0, aSampleNumber:J
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0           #aSampleNumber:J
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSampleNumber()[J
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    return-object v0
.end method

.method public setSampleNumber([J)V
    .locals 0
    .parameter "sampleNumber"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncSampleBox[entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
