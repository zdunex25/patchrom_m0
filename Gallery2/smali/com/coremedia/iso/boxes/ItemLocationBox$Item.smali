.class public Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
.super Ljava/lang/Object;
.source "ItemLocationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/ItemLocationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public baseOffset:J

.field public constructionMethod:I

.field public dataReferenceIndex:I

.field public extents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;",
            ">;"
        }
    .end annotation
.end field

.field public itemId:I

.field final synthetic this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter
    .parameter "in"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    .line 174
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    .line 176
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 177
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 178
    .local v2, tmp:I
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    .line 181
    .end local v2           #tmp:I
    :cond_0
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    .line 182
    iget v3, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    if-lez v3, :cond_1

    .line 183
    iget v3, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    invoke-static {p2, v3}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    .line 187
    :goto_0
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 190
    .local v0, extentCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 191
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    invoke-direct {v4, p1, p2}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v0           #extentCount:I
    .end local v1           #i:I
    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    goto :goto_0

    .line 193
    .restart local v0       #extentCount:I
    .restart local v1       #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    if-ne p0, p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 249
    check-cast v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;

    .line 251
    .local v0, item:Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    iget-wide v5, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 252
    :cond_4
    iget v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    iget v4, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 253
    :cond_5
    iget v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    iget v4, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 254
    :cond_6
    iget v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    iget v4, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 255
    :cond_7
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    iget-object v4, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "bb"

    .prologue
    .line 226
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 228
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 229
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 233
    :cond_0
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 234
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    if-lez v2, :cond_1

    .line 235
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    iget-object v4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v4, v4, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    invoke-static {v2, v3, p1, v4}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 239
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    .line 240
    .local v0, extent:Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->getContent(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 242
    .end local v0           #extent:Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
    :cond_2
    return-void
.end method

.method public getSize()I
    .locals 5

    .prologue
    .line 204
    const/4 v2, 0x2

    .line 206
    .local v2, size:I
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 207
    add-int/lit8 v2, v2, 0x2

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 211
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v3, v3, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    add-int/2addr v2, v3

    .line 212
    add-int/lit8 v2, v2, 0x2

    .line 215
    iget-object v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    .line 216
    .local v0, extent:Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 218
    .end local v0           #extent:Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 262
    iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    .line 263
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    add-int v0, v1, v2

    .line 264
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    add-int v0, v1, v2

    .line 265
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 266
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 267
    return v0

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item{baseOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constructionMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataReferenceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
