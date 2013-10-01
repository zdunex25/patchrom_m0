.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackFragmentRandomAccessBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    }
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private lengthSizeOfSampleNum:I

.field private lengthSizeOfTrafNum:I

.field private lengthSizeOfTrunNum:I

.field private reserved:I

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 64
    const-string v0, "tfra"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 58
    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    .line 59
    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    .line 60
    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "content"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 86
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    .line 87
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 88
    .local v4, temp:J
    const/4 v6, 0x6

    shr-long v6, v4, v6

    long-to-int v6, v6

    iput v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I

    .line 89
    const-wide/16 v6, 0x3f

    and-long/2addr v6, v4

    long-to-int v6, v6

    shr-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    .line 90
    const-wide/16 v6, 0xc

    and-long/2addr v6, v4

    long-to-int v6, v6

    shr-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    .line 91
    const-wide/16 v6, 0x3

    and-long/2addr v6, v4

    long-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    .line 92
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 94
    .local v2, numberOfEntries:J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    int-to-long v6, v1

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    .line 97
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;-><init>()V

    .line 98
    .local v0, entry:Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 99
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 105
    :goto_1
    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$202(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 106
    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$302(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 107
    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$402(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 109
    iget-object v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 103
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J
    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    goto :goto_1

    .line 112
    .end local v0           #entry:Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "byteBuffer"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 118
    iget-wide v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 120
    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I

    shl-int/lit8 v4, v4, 0x6

    int-to-long v2, v4

    .line 121
    .local v2, temp:J
    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 122
    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 123
    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 124
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 125
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 127
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    .line 128
    .local v0, entry:Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 129
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 130
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 135
    :goto_1
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$200(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    invoke-static {v4, v5, p1, v6}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 136
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$300(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    invoke-static {v4, v5, p1, v6}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 137
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$400(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    iget v6, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    invoke-static {v4, v5, p1, v6}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 132
    :cond_0
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 133
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 140
    .end local v0           #entry:Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .prologue
    .line 69
    const-wide/16 v0, 0x4

    .line 70
    .local v0, contentSize:J
    const-wide/16 v2, 0xc

    add-long/2addr v0, v2

    .line 71
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 76
    :goto_0
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 77
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 78
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 79
    return-wide v0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackFragmentRandomAccessBox{trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
