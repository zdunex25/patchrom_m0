.class Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;
.super Ljava/lang/Object;
.source "MtpDeviceSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/MtpDeviceSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/MtpDeviceSet;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/MtpDeviceSet;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/MtpDeviceSet;Lcom/android/gallery3d/data/MtpDeviceSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;-><init>(Lcom/android/gallery3d/data/MtpDeviceSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 12
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v8, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    #getter for: Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v8}, Lcom/android/gallery3d/data/MtpDeviceSet;->access$000(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 68
    .local v1, dataManager:Lcom/android/gallery3d/data/DataManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    #getter for: Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;
    invoke-static {v8}, Lcom/android/gallery3d/data/MtpDeviceSet;->access$100(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/data/MtpContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v4

    .line 72
    .local v4, devices:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpDevice;>;"
    const-string v8, "MtpDeviceSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadDevices: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/mtp/MtpDevice;

    .line 74
    .local v6, mtpDevice:Landroid/mtp/MtpDevice;
    sget-object v9, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 75
    :try_start_0
    invoke-virtual {v6}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v3

    .line 76
    .local v3, deviceId:I
    iget-object v8, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    iget-object v8, v8, Lcom/android/gallery3d/data/MtpDeviceSet;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 77
    .local v0, childPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MtpDevice;

    .line 78
    .local v2, device:Lcom/android/gallery3d/data/MtpDevice;
    if-nez v2, :cond_0

    .line 79
    new-instance v2, Lcom/android/gallery3d/data/MtpDevice;

    .end local v2           #device:Lcom/android/gallery3d/data/MtpDevice;
    iget-object v8, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    #getter for: Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v8}, Lcom/android/gallery3d/data/MtpDeviceSet;->access$000(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v8

    iget-object v10, p0, Lcom/android/gallery3d/data/MtpDeviceSet$DevicesLoader;->this$0:Lcom/android/gallery3d/data/MtpDeviceSet;

    #getter for: Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;
    invoke-static {v10}, Lcom/android/gallery3d/data/MtpDeviceSet;->access$100(Lcom/android/gallery3d/data/MtpDeviceSet;)Lcom/android/gallery3d/data/MtpContext;

    move-result-object v10

    invoke-direct {v2, v0, v8, v3, v10}, Lcom/android/gallery3d/data/MtpDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/MtpContext;)V

    .line 81
    .restart local v2       #device:Lcom/android/gallery3d/data/MtpDevice;
    :cond_0
    const-string v8, "MtpDeviceSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v9

    goto :goto_0

    .end local v0           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v2           #device:Lcom/android/gallery3d/data/MtpDevice;
    .end local v3           #deviceId:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 85
    .end local v6           #mtpDevice:Landroid/mtp/MtpDevice;
    :cond_1
    sget-object v8, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v7
.end method
