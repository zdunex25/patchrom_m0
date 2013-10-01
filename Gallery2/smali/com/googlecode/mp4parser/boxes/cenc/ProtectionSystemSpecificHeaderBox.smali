.class public Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ProtectionSystemSpecificHeaderBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static OMA2_SYSTEM_ID:[B

.field public static PLAYREADY_SYSTEM_ID:[B


# instance fields
.field content:[B

.field systemId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z

    .line 37
    const-string v0, "A2B55680-6F43-11E0-9A3F-0002A5D5C51B"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/UUIDConverter;->convert(Ljava/util/UUID;)[B

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->OMA2_SYSTEM_ID:[B

    .line 38
    const-string v0, "9A04F079-9840-4286-AB92-E65BE0885F95"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/UUIDConverter;->convert(Ljava/util/UUID;)[B

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->PLAYREADY_SYSTEM_ID:[B

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "pssh"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 82
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    .line 83
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 85
    .local v0, length:J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    .line 86
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 87
    sget-boolean v2, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 88
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    const/16 v2, 0x10

    .line 72
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 73
    sget-boolean v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    array-length v0, v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    return-wide v0
.end method
