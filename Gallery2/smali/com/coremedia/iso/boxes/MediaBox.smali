.class public Lcom/coremedia/iso/boxes/MediaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MediaBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "mdia"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

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

    .line 53
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/HandlerBox;

    if-eqz v2, :cond_0

    .line 54
    check-cast v0, Lcom/coremedia/iso/boxes/HandlerBox;

    .line 57
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

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

    .line 44
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    if-eqz v2, :cond_0

    .line 45
    check-cast v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    .line 48
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

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

    .line 35
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    if-eqz v2, :cond_0

    .line 36
    check-cast v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    .line 39
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
