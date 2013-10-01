.class public Lcom/android/gallery3d/data/FilterEmptyPromptSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FilterEmptyPromptSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mEmptyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "path"
    .parameter "baseSet"
    .parameter "emptyItem"

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iput-object p2, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 49
    .local v0, itemCount:I
    if-lez v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 51
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 39
    .local v0, itemCount:I
    if-lez v0, :cond_0

    .line 42
    .end local v0           #itemCount:I
    :goto_0
    return v0

    .restart local v0       #itemCount:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->notifyContentChanged()V

    .line 61
    return-void
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    return-wide v0
.end method
