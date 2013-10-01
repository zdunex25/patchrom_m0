.class public Lcom/coremedia/iso/boxes/RecordingYearBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "RecordingYearBox.java"


# instance fields
.field recordingYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "yrrc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/RecordingYearBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 54
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/RecordingYearBox;->recordingYear:I

    .line 55
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/RecordingYearBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 60
    iget v0, p0, Lcom/coremedia/iso/boxes/RecordingYearBox;->recordingYear:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 61
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x6

    return-wide v0
.end method
