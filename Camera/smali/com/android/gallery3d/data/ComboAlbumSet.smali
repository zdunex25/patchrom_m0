.class public Lcom/android/gallery3d/data/ComboAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;[Lcom/android/gallery3d/data/MediaSet;)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "mediaSets"

    .prologue
    .line 33
    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 34
    iput-object p3, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 36
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0216

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 6
    .parameter "index"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 45
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    .line 46
    .local v4, size:I
    if-ge p1, v4, :cond_0

    .line 47
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 51
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 49
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    .restart local v4       #size:I
    :cond_0
    sub-int/2addr p1, v4

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #size:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSubMediaSetCount()I
    .locals 6

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 58
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 73
    :goto_1
    return v2

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ComboAlbumSet;->notifyContentChanged()V

    .line 90
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 81
    .local v3, version:J
    iget-wide v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v3           #version:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    .line 84
    :cond_2
    iget-wide v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    return-wide v5
.end method

.method public requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method
