.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 40
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 41
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 42
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 43
    return-void
.end method

.method private updateClusters()V
    .locals 12

    .prologue
    .line 80
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 83
    .local v4, context:Landroid/content/Context;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v10, :pswitch_data_0

    .line 97
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, clustering:Lcom/android/gallery3d/data/Clustering;
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 102
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 103
    .local v9, n:I
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 104
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 106
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, childName:Ljava/lang/String;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 108
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 117
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    sget-object v11, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 118
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 119
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 122
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 126
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v6           #i:I
    .end local v9           #n:I
    :pswitch_1
    new-instance v3, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 88
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_2
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 89
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 91
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_3
    new-instance v3, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 92
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 94
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_4
    new-instance v3, Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 109
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v6       #i:I
    .restart local v9       #n:I
    :cond_1
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    move-object v10, v3

    .line 110
    check-cast v10, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v7

    .line 111
    .local v7, minSize:J
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 112
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 113
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v7           #minSize:J
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 128
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 10

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v0, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v9, p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 139
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 143
    .local v4, n:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 144
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 145
    .local v6, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 147
    .local v3, m:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 148
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/Path;

    .line 149
    .local v7, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v7           #p:Lcom/android/gallery3d/data/Path;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 158
    .end local v2           #j:I
    .end local v3           #m:I
    .end local v5           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v6           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 77
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 63
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 69
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    .line 71
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    return-wide v0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_0
.end method
