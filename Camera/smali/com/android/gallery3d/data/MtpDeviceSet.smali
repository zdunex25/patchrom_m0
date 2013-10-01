.class public Lcom/android/gallery3d/data/MtpDeviceSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MtpDeviceSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDeviceSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMtpContext:Lcom/android/gallery3d/data/MtpContext;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MtpContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "mtpContext"

    .prologue
    .line 56
    invoke-static {}, Lcom/android/gallery3d/data/MtpDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 58
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 59
    iput-object p3, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    .line 60
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mName:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/data/MtpContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    return-object v0
.end method

.method public static getDeviceName(Lcom/android/gallery3d/data/MtpContext;I)Ljava/lang/String;
    .locals 6
    .parameter "mtpContext"
    .parameter "deviceId"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(I)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 92
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 93
    const-string v4, ""

    .line 101
    :goto_0
    return-object v4

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getDeviceInfo()Landroid/mtp/MtpDeviceInfo;

    move-result-object v1

    .line 96
    .local v1, info:Landroid/mtp/MtpDeviceInfo;
    if-nez v1, :cond_1

    .line 97
    const-string v4, ""

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Landroid/mtp/MtpDeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, manufacturer:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/mtp/MtpDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, model:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mIsLoading:Z

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/MtpDeviceSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/MtpDeviceSet$1;-><init>(Lcom/android/gallery3d/data/MtpDeviceSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 128
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mIsLoading:Z

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;-><init>(Lcom/android/gallery3d/data/MtpDeviceSet;Lcom/android/gallery3d/data/MtpDeviceSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 135
    .local v0, device:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #device:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/MtpDeviceSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDataVersion:J

    .line 139
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
