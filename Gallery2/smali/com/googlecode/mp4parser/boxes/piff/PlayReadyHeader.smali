.class public Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;
.super Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
.source "PlayReadyHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    }
.end annotation


# instance fields
.field private length:J

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    .line 67
    const/4 v3, 0x6

    .line 68
    .local v3, size:I
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;

    .line 69
    .local v2, record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    add-int/lit8 v3, v3, 0x4

    .line 70
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 72
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    int-to-long v5, v3

    invoke-static {v0, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32BE(Ljava/nio/ByteBuffer;J)V

    .line 75
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v0, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 76
    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;

    .line 77
    .restart local v2       #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    iget v5, v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->type:I

    invoke-static {v0, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 78
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v0, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 79
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 80
    .local v4, tmp4debug:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 83
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    .end local v4           #tmp4debug:Ljava/nio/ByteBuffer;
    :cond_1
    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32BE(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->length:J

    .line 59
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16BE(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 61
    .local v0, recordCount:I
    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->createFor(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PlayReadyHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "{length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", recordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
