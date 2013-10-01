.class public Lcom/coremedia/iso/boxes/CompositionTimeToSample;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "CompositionTimeToSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "ctts"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static blowupCompositionTimes(Ljava/util/List;)[I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, entries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    const-wide/16 v6, 0x0

    .line 132
    .local v6, numOfSamples:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 133
    .local v3, entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 135
    .end local v3           #entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_0
    sget-boolean v8, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 136
    :cond_1
    long-to-int v8, v6

    new-array v2, v8, [I

    .line 138
    .local v2, decodingTime:[I
    const/4 v0, 0x0

    .line 141
    .local v0, current:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 142
    .restart local v3       #entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 143
    add-int/lit8 v1, v0, 0x1

    .end local v0           #current:I
    .local v1, current:I
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v8

    aput v8, v2, v0

    .line 142
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_1

    .line 147
    .end local v3           #entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v4           #i:I
    :cond_3
    return-object v2
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 69
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    .line 70
    .local v2, numberOfEntries:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    new-instance v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 73
    .local v0, e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    iget-object v3, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "byteBuffer"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 80
    iget-object v2, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 82
    iget-object v2, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 83
    .local v0, entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 84
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 87
    .end local v0           #entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    iput-object p1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->entries:Ljava/util/List;

    .line 64
    return-void
.end method
