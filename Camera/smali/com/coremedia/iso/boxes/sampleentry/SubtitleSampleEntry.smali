.class public Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SubtitleSampleEntry.java"


# instance fields
.field private imageMimeType:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private schemaLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 38
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 42
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 47
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUtf8String(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUtf8String(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUtf8String(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .prologue
    .line 31
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    int-to-long v0, v2

    .line 32
    .local v0, contentSize:J
    return-wide v0
.end method
