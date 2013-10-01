.class public Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "Ovc1VisualSampleEntryImpl.java"


# instance fields
.field private vc1Content:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "ovc1"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    .line 29
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->getDataReferenceIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 37
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    .line 16
    const-wide/16 v2, 0x8

    .line 18
    .local v2, size:J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 19
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 21
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    iget-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 22
    return-wide v2
.end method
