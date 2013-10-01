.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieFragmentBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "moof"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .line 58
    .local v0, b:Lcom/coremedia/iso/boxes/Box;
    const-wide/16 v3, 0x0

    .line 59
    .local v3, offset:J
    :goto_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 60
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v5

    invoke-interface {v5}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 61
    .local v1, box:Lcom/coremedia/iso/boxes/Box;
    if-ne v0, v1, :cond_1

    .line 66
    .end local v1           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    goto :goto_0

    .line 64
    .restart local v1       #box:Lcom/coremedia/iso/boxes/Box;
    :cond_1
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    .line 68
    .end local v1           #box:Lcom/coremedia/iso/boxes/Box;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-wide v3
.end method
