.class public Lcom/coremedia/iso/boxes/DataEntryUrlBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "DataEntryUrlBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "url "

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 38
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 44
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "DataEntryUrlBox[]"

    return-object v0
.end method
