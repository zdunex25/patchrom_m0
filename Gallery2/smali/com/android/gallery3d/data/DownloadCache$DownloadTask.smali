.class Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/gallery3d/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/DownloadCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    .line 266
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    .line 267
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/data/DownloadCache$DownloadTask;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method


# virtual methods
.method public addProxy(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 281
    #setter for: Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    invoke-static {p1, p0}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->access$302(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/android/gallery3d/data/DownloadCache$DownloadTask;)Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/io/File;>;"
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 288
    .local v2, file:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 289
    .local v4, id:J
    if-eqz v2, :cond_0

    .line 290
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    iget-object v8, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v7, v8, v2}, Lcom/android/gallery3d/data/DownloadCache;->access$400(Lcom/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v4

    .line 293
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 294
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 312
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/gallery3d/data/DownloadCache;->access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;
    invoke-static {v7}, Lcom/android/gallery3d/data/DownloadCache;->access$500(Lcom/android/gallery3d/data/DownloadCache;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v2, :cond_2

    .line 302
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    invoke-direct {v1, v7, v4, v5, v2}, Lcom/android/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/android/gallery3d/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .end local v0           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .local v1, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :try_start_2
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;
    invoke-static {v7}, Lcom/android/gallery3d/data/DownloadCache;->access$500(Lcom/android/gallery3d/data/DownloadCache;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v10, v1}, Lcom/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 305
    .end local v1           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    :try_start_4
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    .line 307
    .local v6, proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->setResult(Lcom/android/gallery3d/data/DownloadCache$Entry;)V

    goto :goto_2

    .line 311
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 303
    .end local v0           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v1       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 305
    .end local v1           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :catchall_1
    move-exception v7

    :goto_3
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 309
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/gallery3d/data/DownloadCache;->access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v7, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    const/16 v9, 0x10

    #calls: Lcom/android/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    invoke-static {v7, v9}, Lcom/android/gallery3d/data/DownloadCache;->access$600(Lcom/android/gallery3d/data/DownloadCache;I)V

    .line 311
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 305
    .end local v0           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v0       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    goto :goto_3
.end method

.method public removeProxy(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/gallery3d/data/DownloadCache;->access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/gallery3d/data/DownloadCache;->access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 317
    invoke-interface {p1, v4}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, tempFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, url:Ljava/net/URL;
    const-string v4, "cache"

    const-string v5, ".tmp"

    iget-object v6, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    #getter for: Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v6}, Lcom/android/gallery3d/data/DownloadCache;->access$100(Lcom/android/gallery3d/data/DownloadCache;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 323
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 324
    invoke-static {p1, v3, v2}, Lcom/android/gallery3d/data/DownloadUtils;->requestDownload(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    .line 325
    .local v0, downloaded:Z
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p1, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-object v4, v2

    .line 333
    .end local v0           #downloaded:Z
    .end local v3           #url:Ljava/net/URL;
    :goto_0
    return-object v4

    .line 330
    .restart local v0       #downloaded:Z
    .restart local v3       #url:Ljava/net/URL;
    :cond_0
    invoke-interface {p1, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 332
    .end local v0           #downloaded:Z
    .end local v3           #url:Ljava/net/URL;
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 333
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DownloadCache"

    const-string v5, "fail to download %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-interface {p1, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {p1, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    throw v4
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
