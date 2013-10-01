.class public Lcom/coremedia/iso/boxes/mdat/SampleList;
.super Ljava/util/AbstractList;
.source "SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field isoFile:Lcom/coremedia/iso/IsoFile;

.field mdatEndCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdatStartCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

.field offsets:[J

.field sizes:[J


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 12
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/mdat/SampleList;->initIsoFile(Lcom/coremedia/iso/IsoFile;)V

    .line 42
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v1

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v0

    move-object v6, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    .line 50
    array-length v0, v6

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v7

    .line 52
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 56
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 62
    const/4 v0, 0x0

    :goto_2
    array-length v2, v7

    if-ge v0, v2, :cond_3

    .line 63
    aget-wide v8, v7, v0

    .line 64
    aget-wide v3, v6, v0

    .line 65
    const/4 v2, 0x0

    :goto_3
    int-to-long v10, v2

    cmp-long v5, v10, v8

    if-gez v5, :cond_2

    .line 66
    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    aget-wide v10, v5, v1

    .line 67
    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    aput-wide v3, v5, v1

    .line 68
    add-long/2addr v3, v10

    .line 69
    add-int/lit8 v5, v1, 0x1

    .line 65
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_3

    .line 47
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    move-object v6, v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    const-class v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 83
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v1

    const-class v4, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v1, v4}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 85
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6, v0}, Lcom/coremedia/iso/boxes/mdat/SampleList;->getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    if-nez v0, :cond_7

    .line 91
    :cond_6
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 95
    :cond_7
    invoke-direct {p0, v2}, Lcom/coremedia/iso/boxes/mdat/SampleList;->splitToArrays(Ljava/util/Map;)V

    .line 99
    :cond_8
    return-void
.end method

.method private initIsoFile(Lcom/coremedia/iso/IsoFile;)V
    .locals 13
    .parameter "isoFile"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    .line 140
    const-wide/16 v3, 0x0

    .line 141
    .local v3, currentOffset:J
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 142
    .local v8, mdats:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/mdat/MediaDataBox;>;"
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v9}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 143
    .local v0, b:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v5

    .line 144
    .local v5, currentSize:J
    const-string v9, "mdat"

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    instance-of v9, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 146
    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v9, v9

    add-long v1, v3, v9

    .line 147
    .local v1, contentOffset:J
    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    move-object v9, v0

    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    move-object v9, v0

    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    add-long v11, v1, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    check-cast v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .end local v0           #b:Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v1           #contentOffset:J
    :cond_0
    add-long/2addr v3, v5

    .line 155
    goto :goto_0

    .line 151
    .restart local v0       #b:Lcom/coremedia/iso/boxes/Box;
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Sample need to be in mdats and mdats need to be instanceof MediaDataBox"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    .end local v0           #b:Lcom/coremedia/iso/boxes/Box;
    .end local v5           #currentSize:J
    :cond_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    iput-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .line 157
    return-void
.end method

.method private splitToArrays(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, offsets2Sizes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v4, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [J

    .line 106
    .local v3, nuSizes:[J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v4, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v2, v4, [J

    .line 108
    .local v2, nuOffsets:[J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v4, v4

    add-int v5, v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 111
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v4, v4

    add-int v5, v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iput-object v3, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 114
    iput-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/nio/ByteBuffer;
    .locals 14
    .parameter "index"

    .prologue
    .line 169
    iget-object v11, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    aget-wide v6, v11, p1

    .line 170
    .local v6, offset:J
    iget-object v11, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    aget-wide v11, v11, p1

    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    .line 172
    .local v8, sampleSize:I
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .local v0, arr$:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 173
    .local v5, mediaDataBox:Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    iget-object v11, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 174
    .local v9, start:J
    iget-object v11, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 175
    .local v1, end:J
    cmp-long v11, v9, v6

    if-gtz v11, :cond_0

    int-to-long v11, v8

    add-long/2addr v11, v6

    cmp-long v11, v11, v1

    if-gtz v11, :cond_0

    .line 176
    sub-long v11, v6, v9

    invoke-virtual {v5, v11, v12, v8}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getContent(JI)Ljava/nio/ByteBuffer;

    move-result-object v11

    return-object v11

    .line 172
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v1           #end:J
    .end local v5           #mediaDataBox:Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    .end local v9           #start:J
    :cond_1
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The sample with offset "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is NOT located within an mdat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;
    .locals 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;",
            "J",
            "Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 187
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v2

    move-wide v3, v2

    .line 195
    :goto_0
    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 196
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getDataOffset()I

    move-result v2

    int-to-long v5, v2

    add-long v10, v3, v5

    .line 197
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v12

    .line 199
    const-wide/16 v5, 0x0

    .line 200
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 202
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 203
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v14

    .line 204
    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    add-long/2addr v5, v14

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getOffset()J

    move-result-wide v2

    move-wide v3, v2

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v14

    .line 209
    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-long/2addr v5, v14

    goto :goto_1

    .line 212
    :cond_4
    if-nez p4, :cond_5

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleSize()J

    move-result-wide v14

    .line 216
    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-long/2addr v5, v14

    goto :goto_1

    .line 224
    :cond_6
    return-object v7
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v0, v0

    return v0
.end method
