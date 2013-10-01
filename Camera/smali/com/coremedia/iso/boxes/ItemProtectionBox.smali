.class public Lcom/coremedia/iso/boxes/ItemProtectionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "ItemProtectionBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "ipro"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 49
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 50
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 51
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 57
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 59
    return-void
.end method
