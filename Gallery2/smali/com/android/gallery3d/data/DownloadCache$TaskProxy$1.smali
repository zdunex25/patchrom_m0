.class Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    #getter for: Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->access$300(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->removeProxy(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 353
    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->access$702(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;Z)Z

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
