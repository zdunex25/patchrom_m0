.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieFragmentRandomAccessOffsetBox.java"


# instance fields
.field private mfraSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "mfro"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 46
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J

    .line 47
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "byteBuffer"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 52
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 53
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x8

    return-wide v0
.end method
