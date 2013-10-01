.class Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 339
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 341
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 342
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;

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
    .line 389
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 353
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_7

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 359
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 360
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-eqz v6, :cond_1

    .line 361
    const-string v6, "AlbumDataAdapter"

    const-string v7, "reload pause"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 364
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-eqz v6, :cond_2

    .line 365
    const-string v6, "AlbumDataAdapter"

    const-string v7, "reload resume"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 369
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 370
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 372
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    .line 373
    .local v2, version:J
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 374
    .local v0, info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    if-nez v0, :cond_6

    move v1, v4

    .line 375
    :goto_1
    if-nez v1, :cond_0

    .line 376
    iget-wide v6, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 377
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 378
    iput-wide v2, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 380
    :cond_4
    iget v6, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v6, :cond_5

    .line 381
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget v7, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v8, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 383
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v7, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move v1, v5

    .line 374
    goto :goto_1

    .line 385
    .end local v0           #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .end local v2           #version:J
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 386
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
