.class public Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "ActionMessageFormat0SampleEntryBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "amf0"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 31
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 37
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    .line 18
    const-wide/16 v2, 0x8

    .line 19
    .local v2, size:J
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->boxes:Ljava/util/List;

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

    .line 20
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 23
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    return-wide v2
.end method
