.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SubSampleInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    }
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entryCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "subs"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 9
    .parameter "content"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v5, v0

    iget-wide v7, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 75
    new-instance v2, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;-><init>()V

    .line 76
    .local v2, sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->setSampleDelta(J)V

    .line 77
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 78
    .local v3, subsampleCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 79
    new-instance v4, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;-><init>()V

    .line 80
    .local v4, subsampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setSubsampleSize(J)V

    .line 81
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setSubsamplePriority(I)V

    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setDiscardable(I)V

    .line 83
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setReserved(J)V

    .line 84
    invoke-virtual {v2, v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->addSubsampleEntry(Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v5, v5

    goto :goto_2

    .line 86
    .end local v4           #subsampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    :cond_1
    iget-object v5, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1           #j:I
    .end local v2           #sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    .end local v3           #subsampleCount:I
    :cond_2
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "byteBuffer"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 94
    iget-object v5, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 95
    iget-object v5, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    .line 96
    .local v2, sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSampleDelta()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 97
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleCount()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 98
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, subsampleEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;

    .line 100
    .local v4, subsampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 101
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsampleSize()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 105
    :goto_1
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsamplePriority()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 106
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getDiscardable()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 107
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getReserved()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsampleSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 110
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    .end local v3           #subsampleEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;>;"
    .end local v4           #subsampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    :cond_2
    return-void
.end method

.method protected getContentSize()J
    .locals 11

    .prologue
    .line 60
    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x6

    iget-wide v9, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    mul-long/2addr v7, v9

    add-long v0, v5, v7

    .line 61
    .local v0, entries:J
    const/4 v4, 0x0

    .line 62
    .local v4, subsampleEntries:I
    iget-object v5, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    .line 63
    .local v3, sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const/4 v5, 0x4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x4

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    .line 65
    .end local v3           #sampleEntry:Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    :cond_1
    int-to-long v5, v4

    add-long/2addr v5, v0

    return-wide v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubSampleInformationBox{entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
