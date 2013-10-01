.class Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAllPanoramaSupports"
.end annotation


# instance fields
.field public mAllPanorama360:Z

.field public mAllPanoramas:Z

.field public mHasPanorama360:Z

.field private mJobContext:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field private mLock:Ljava/lang/Object;

.field private mNumInfoRequired:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, mediaObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    .line 85
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaObject;

    .line 91
    .local v1, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0

    .line 93
    .end local v1           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/android/gallery3d/data/MediaObject;ZZ)V
    .locals 4
    .parameter "mediaObject"
    .parameter "isPanorama"
    .parameter "isPanorama360"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 99
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    .line 100
    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    if-eqz v2, :cond_4

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanoramas:Z

    .line 101
    if-eqz p3, :cond_5

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mAllPanorama360:Z

    .line 102
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mHasPanorama360:Z

    .line 103
    iget v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    :cond_3
    monitor-exit v3

    .line 107
    return-void

    :cond_4
    move v2, v0

    .line 100
    goto :goto_0

    :cond_5
    move v2, v0

    .line 101
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForPanoramaSupport()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mNumInfoRequired:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mJobContext:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
