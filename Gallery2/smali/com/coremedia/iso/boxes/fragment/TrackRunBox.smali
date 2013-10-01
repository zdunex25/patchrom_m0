.class public Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackRunBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    }
.end annotation


# instance fields
.field private dataOffset:I

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "trun"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    .line 157
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "content"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 218
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 220
    .local v2, sampleCount:J
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 221
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    iput v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 226
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 229
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-gez v4, :cond_6

    .line 230
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 231
    .local v0, entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 232
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_2

    .line 235
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_3

    .line 238
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-static {v0, v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$202(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;Lcom/coremedia/iso/boxes/fragment/SampleFlags;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_4

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    #setter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I
    invoke-static {v0, v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$302(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;I)I

    .line 243
    :cond_4
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    .end local v0           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v1           #i:I
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    goto :goto_0

    .line 246
    .restart local v1       #i:I
    :cond_6
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "byteBuffer"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 189
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 190
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v1

    .line 192
    .local v1, flags:I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 193
    iget v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 195
    :cond_0
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 196
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 200
    .local v0, entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_3

    .line 201
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 203
    :cond_3
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_4

    .line 204
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 206
    :cond_4
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_5

    .line 207
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$200(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    .line 209
    :cond_5
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 210
    #getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$300(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 213
    .end local v0           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    :cond_6
    return-void
.end method

.method protected getContentSize()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x4

    .line 160
    const-wide/16 v3, 0x8

    .line 161
    .local v3, size:J
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v2

    .line 163
    .local v2, flags:I
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 164
    add-long/2addr v3, v7

    .line 166
    :cond_0
    and-int/lit8 v5, v2, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 167
    add-long/2addr v3, v7

    .line 170
    :cond_1
    const-wide/16 v0, 0x0

    .line 171
    .local v0, entrySize:J
    and-int/lit16 v5, v2, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_2

    .line 172
    add-long/2addr v0, v7

    .line 174
    :cond_2
    and-int/lit16 v5, v2, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_3

    .line 175
    add-long/2addr v0, v7

    .line 177
    :cond_3
    and-int/lit16 v5, v2, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_4

    .line 178
    add-long/2addr v0, v7

    .line 180
    :cond_4
    and-int/lit16 v5, v2, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_5

    .line 181
    add-long/2addr v0, v7

    .line 183
    :cond_5
    iget-object v5, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    .line 184
    return-wide v3
.end method

.method public getDataOffset()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public isDataOffsetPresent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstSampleFlagsPresent()Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSampleCompositionTimeOffsetPresent()Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSampleDurationPresent()Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSampleFlagsPresent()Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSampleSizePresent()Z
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "TrackRunBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "{sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, ", dataOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", dataOffsetPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isDataOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", sampleSizePresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", sampleDurationPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, ", sampleFlagsPresentPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", sampleCompositionTimeOffsetPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ", firstSampleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
