.class Lcom/android/gallery3d/app/ManageCachePage$3;
.super Ljava/lang/Object;
.source "ManageCachePage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ManageCachePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$3;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ManageCachePage$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .parameter "jc"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$3;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;
    invoke-static {v0}, Lcom/android/gallery3d/app/ManageCachePage;->access$900(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->loadStorageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    .line 251
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$3;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/ManageCachePage;->access$100(Lcom/android/gallery3d/app/ManageCachePage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
