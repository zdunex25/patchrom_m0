.class public Lcom/coremedia/iso/boxes/ItemLocationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ItemLocationBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;,
        Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    }
.end annotation


# instance fields
.field public baseOffsetSize:I

.field public indexSize:I

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/ItemLocationBox$Item;",
            ">;"
        }
    .end annotation
.end field

.field public lengthSize:I

.field public offsetSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 70
    const-string v0, "iloc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 61
    iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    .line 62
    iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    .line 63
    iput v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 101
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 102
    .local v2, tmp:I
    ushr-int/lit8 v3, v2, 0x4

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    .line 103
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    .line 104
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 105
    ushr-int/lit8 v3, v2, 0x4

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    .line 107
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 108
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 111
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 112
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;

    invoke-direct {v4, p0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "byteBuffer"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 86
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    shl-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    or-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 87
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 88
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    shl-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    or-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 93
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;

    .line 94
    .local v1, item:Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    invoke-virtual {v1, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->getContent(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 90
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    :cond_0
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    shl-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 96
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    .line 75
    const-wide/16 v2, 0x8

    .line 76
    .local v2, size:J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;

    .line 77
    .local v1, item:Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 79
    .end local v1           #item:Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    :cond_0
    return-wide v2
.end method
