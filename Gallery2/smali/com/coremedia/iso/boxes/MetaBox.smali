.class public Lcom/coremedia/iso/boxes/MetaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MetaBox.java"


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "meta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 32
    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 33
    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    .line 39
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v4, -0x1

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 66
    .local v2, pos:I
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, isHdlr:Ljava/lang/String;
    const-string v3, "hdlr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iput v4, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 72
    iput v4, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/coremedia/iso/boxes/MetaBox;->boxes:Ljava/util/List;

    iget-object v4, p0, Lcom/coremedia/iso/boxes/MetaBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    new-instance v5, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v5, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v4, v5, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Sebastian needs to fix 7518765283"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_2

    .line 86
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Sebastian needs to fix it 90732r26537"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_2
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 94
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MetaBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 97
    return-void
.end method

.method public getContentSize()J
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-wide/16 v0, 0x4

    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isMp4Box()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
