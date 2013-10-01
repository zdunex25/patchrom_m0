.class public final Lcom/coremedia/iso/boxes/apple/AppleNameBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleNameBox.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 43
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleNameBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method
