.class public Lcom/coremedia/iso/boxes/UserDataBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "UserDataBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "udta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->_parseDetails(Ljava/nio/ByteBuffer;)V

    .line 48
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 53
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .parameter "readableByteChannel"
    .parameter "header"
    .parameter "contentSize"
    .parameter "boxParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractContainerBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    .line 43
    return-void
.end method
