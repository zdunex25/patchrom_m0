.class public Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/android/gallery3d/data/DownloadCache$DownloadTask;)Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/data/DownloadCache$Entry;
    .locals 3
    .parameter "jc"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;-><init>(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 359
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 361
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 366
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized setResult(Lcom/android/gallery3d/data/DownloadCache$Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
