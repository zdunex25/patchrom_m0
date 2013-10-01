.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AssetInformationBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field apid:Ljava/lang/String;

.field profileVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ainf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    .line 30
    const-string v0, "0000"

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 54
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    .line 56
    const/4 p1, 0x0

    .line 57
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 45
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    int-to-long v0, v0

    return-wide v0
.end method
