.class public Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "QuicktimeTextSampleEntry.java"


# instance fields
.field backgroundB:I

.field backgroundG:I

.field backgroundR:I

.field defaultTextBox:J

.field displayFlags:I

.field fontFace:S

.field fontName:Ljava/lang/String;

.field fontNumber:S

.field foregroundB:I

.field foregroundG:I

.field foregroundR:I

.field reserved1:J

.field reserved2:B

.field reserved3:S

.field textJustification:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0xffff

    .line 53
    const-string v0, "text"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 46
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    .line 47
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    .line 48
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    .line 62
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    .line 63
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    .line 64
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    .line 65
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    .line 71
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    .line 73
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 77
    .local v0, length:I
    new-array v1, v0, [B

    .line 78
    .local v1, myFontName:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    .line 83
    .end local v0           #length:I
    .end local v1           #myFontName:[B
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "byteBuffer"

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 214
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 216
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 217
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 218
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 219
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 220
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 221
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 227
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 228
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 229
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 231
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 234
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x34

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
