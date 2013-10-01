.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackFragmentBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "traf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes()Ljava/util/List;

    move-result-object v2

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

    .line 36
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    if-eqz v2, :cond_0

    .line 37
    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    .line 40
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
