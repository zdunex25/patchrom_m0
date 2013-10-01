.class public Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SegmentIndexBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    }
.end annotation


# instance fields
.field earliestPresentationTime:J

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field firstOffset:J

.field referenceId:J

.field reserved:I

.field timeScale:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "sidx"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "content"

    .prologue
    const/4 v6, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 101
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    .line 102
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    .line 103
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    .line 105
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    .line 110
    :goto_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    .line 111
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 112
    .local v3, numEntries:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 113
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 114
    .local v0, b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    new-instance v1, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;-><init>()V

    .line 115
    .local v1, e:Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setReferenceType(B)V

    .line 116
    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setReferencedSize(I)V

    .line 117
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSubsegmentDuration(J)V

    .line 118
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    .end local v0           #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 119
    .restart local v0       #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setStartsWithSap(B)V

    .line 120
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSapType(B)V

    .line 121
    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSapDeltaTime(I)V

    .line 122
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v0           #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .end local v1           #e:Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    .end local v2           #i:I
    .end local v3           #numEntries:I
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    .line 108
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    goto :goto_0

    .line 124
    .restart local v2       #i:I
    .restart local v3       #numEntries:I
    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "byteBuffer"

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 75
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 76
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 78
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 83
    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 84
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 85
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;

    .line 86
    .local v1, entry:Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 87
    .local v0, b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getReferenceType()B

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 88
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getReferencedSize()I

    move-result v3

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 89
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSubsegmentDuration()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 90
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    .end local v0           #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 91
    .restart local v0       #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getStartsWithSap()B

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 92
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSapType()B

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 93
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSapDeltaTime()I

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    goto :goto_1

    .line 80
    .end local v0           #b:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    .end local v1           #entry:Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 81
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 96
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x2

    .line 59
    const-wide/16 v0, 0x4

    .line 60
    .local v0, size:J
    add-long/2addr v0, v2

    .line 61
    add-long/2addr v0, v2

    .line 62
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x8

    :goto_0
    add-long/2addr v0, v2

    .line 63
    add-long/2addr v0, v4

    .line 64
    add-long/2addr v0, v4

    .line 66
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 68
    return-wide v0

    .line 62
    :cond_0
    const-wide/16 v2, 0x10

    goto :goto_0
.end method
