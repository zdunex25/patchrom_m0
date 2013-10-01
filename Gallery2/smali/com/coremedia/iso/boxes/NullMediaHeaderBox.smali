.class public Lcom/coremedia/iso/boxes/NullMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "NullMediaHeaderBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "nmhd"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 37
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 42
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x4

    return-wide v0
.end method
