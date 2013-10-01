.class public final Lcom/coremedia/iso/boxes/apple/AppleDataBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleDataBox.java"


# instance fields
.field private data:[B

.field private fourBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    .line 53
    return-void
.end method

.method private static getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    .line 18
    .local v0, appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 19
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 20
    return-object v0
.end method

.method public static getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    .line 25
    .local v0, appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 26
    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    .line 27
    return-object v0
.end method

.method public static getUint16AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    .line 39
    .local v0, appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    .line 41
    return-object v0

    .line 40
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint32AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    .line 46
    .local v0, appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 47
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    .line 48
    return-object v0

    .line 47
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    .line 32
    .local v0, appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 33
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    .line 72
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 81
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 60
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    .line 61
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-void
.end method

.method public setFourBytes([B)V
    .locals 3
    .parameter "fourBytes"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x4

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-void
.end method
