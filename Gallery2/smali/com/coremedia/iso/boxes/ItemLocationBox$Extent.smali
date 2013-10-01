.class public Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
.super Ljava/lang/Object;
.source "ItemLocationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/ItemLocationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Extent"
.end annotation


# instance fields
.field public extentIndex:J

.field public extentLength:J

.field public extentOffset:J

.field final synthetic this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter
    .parameter "in"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_0

    .line 306
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    .line 308
    :cond_0
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    .line 309
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    .line 310
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    if-ne p0, p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 328
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

    .line 330
    check-cast v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    .line 332
    .local v0, extent:Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    iget-wide v5, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 333
    :cond_4
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    iget-wide v5, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 334
    :cond_5
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    iget-wide v5, v0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_0

    .line 314
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 316
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 317
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 318
    return-void
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    :goto_0
    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v1, v1, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v1, v1, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 341
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    iget-wide v3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 342
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 343
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 344
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Extent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, "{extentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", extentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", extentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->extentIndex:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
