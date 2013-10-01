.class public Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "FontTableBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    }
.end annotation


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ftab"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 35
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 36
    .local v2, numberOfRecords:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    new-instance v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;-><init>()V

    .line 38
    .local v0, fr:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 39
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0           #fr:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 46
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    .line 47
    .local v1, record:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->getContent(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 49
    .end local v1           #record:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .prologue
    .line 25
    const/4 v2, 0x2

    .line 26
    .local v2, size:I
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    .line 27
    .local v0, fontRecord:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 29
    .end local v0           #fontRecord:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    :cond_0
    int-to-long v3, v2

    return-wide v3
.end method
