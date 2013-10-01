.class Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 327
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 328
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 340
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_6

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 347
    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 348
    monitor-exit p0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    iput-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 352
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 354
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    .line 355
    .local v2, version:J
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 356
    .local v0, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    if-nez v0, :cond_5

    move v1, v4

    .line 357
    :goto_1
    if-nez v1, :cond_0

    .line 358
    iget-wide v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 359
    iput-wide v2, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 360
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 366
    iget v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v7, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v6, v7, :cond_3

    .line 367
    iput v9, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 370
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v6, v9, :cond_4

    .line 371
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget v7, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    .line 372
    iget-object v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_0

    .line 373
    iget-object v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    .line 374
    iget-object v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 376
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move v1, v5

    .line 356
    goto :goto_1

    .line 378
    .end local v0           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v2           #version:J
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 379
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
