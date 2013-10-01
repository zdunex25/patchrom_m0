.class public Lcom/coremedia/iso/boxes/MediaInformationBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MediaInformationBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "minf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MediaInformationBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 42
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    if-eqz v2, :cond_0

    .line 43
    check-cast v0, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 46
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
    .locals 3

    .prologue
    .line 32
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MediaInformationBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 33
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    if-eqz v2, :cond_0

    .line 34
    check-cast v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    .line 37
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
