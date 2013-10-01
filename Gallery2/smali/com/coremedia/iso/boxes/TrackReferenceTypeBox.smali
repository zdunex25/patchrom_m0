.class public Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "TrackReferenceTypeBox.java"


# instance fields
.field private trackIds:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 46
    .local v0, count:I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    .line 47
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "byteBuffer"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 55
    .local v3, trackId:J
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3           #trackId:J
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "TrackReferenceTypeBox[type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 68
    const-string v2, ";trackId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
