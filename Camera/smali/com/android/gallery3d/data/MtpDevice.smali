.class public Lcom/android/gallery3d/data/MtpDevice;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MtpDevice.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDeviceId:I

.field private final mDeviceName:Ljava/lang/String;

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private mJpegChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMtpContext:Lcom/android/gallery3d/data/MtpContext;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/MtpContext;)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "mtpContext"

    .prologue
    .line 61
    invoke-static {p4, p3}, Lcom/android/gallery3d/data/MtpDeviceSet;->getDeviceName(Lcom/android/gallery3d/data/MtpContext;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/MtpDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/MtpContext;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/MtpContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "name"
    .parameter "mtpContext"

    .prologue
    .line 48
    invoke-static {}, Lcom/android/gallery3d/data/MtpDevice;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/data/MtpDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 50
    iput p3, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceId:I

    .line 51
    invoke-static {p3}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    .line 53
    iput-object p4, p0, Lcom/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mtp/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    .line 57
    return-void
.end method

.method private collectJpegChildren(IILjava/util/ArrayList;)V
    .locals 5
    .parameter "storageId"
    .parameter "objectId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, dirChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/data/MtpDevice;->queryChildren(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 85
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpObjectInfo;

    .line 87
    .local v2, info:Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v4

    invoke-direct {p0, p1, v4, p3}, Lcom/android/gallery3d/data/MtpDevice;->collectJpegChildren(IILjava/util/ArrayList;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v2           #info:Landroid/mtp/MtpObjectInfo;
    :cond_0
    return-void
.end method

.method public static getObjectInfo(Lcom/android/gallery3d/data/MtpContext;II)Landroid/mtp/MtpObjectInfo;
    .locals 2
    .parameter "mtpContext"
    .parameter "deviceId"
    .parameter "objectId"

    .prologue
    .line 116
    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, deviceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/gallery3d/data/MtpClient;->getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    return-object v1
.end method

.method private loadItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    iget-object v4, p0, Lcom/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/MtpClient;->getStorageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 70
    .local v3, storageList:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpStorageInfo;>;"
    if-nez v3, :cond_1

    .line 76
    :cond_0
    return-object v2

    .line 72
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageInfo;

    .line 73
    .local v1, info:Landroid/mtp/MtpStorageInfo;
    invoke-virtual {v1}, Landroid/mtp/MtpStorageInfo;->getStorageId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Lcom/android/gallery3d/data/MtpDevice;->collectJpegChildren(IILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private queryChildren(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "storageId"
    .parameter "objectId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, jpeg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    .local p4, dir:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    iget-object v4, p0, Lcom/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/gallery3d/data/MtpClient;->getObjectList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpObjectInfo;

    .line 98
    .local v3, obj:Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v3}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v1

    .line 99
    .local v1, format:I
    sparse-switch v1, :sswitch_data_0

    .line 108
    const-string v4, "MtpDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other type: name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", format = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :sswitch_0
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public Import()Z
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/data/MtpContext;->copyAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 12
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move v6, p1

    .line 124
    .local v6, begin:I
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 126
    .local v8, end:I
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 127
    .local v7, dataManager:Lcom/android/gallery3d/data/DataManager;
    move v9, v6

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpObjectInfo;

    .line 129
    .local v4, child:Landroid/mtp/MtpObjectInfo;
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDevice;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 130
    .local v1, childPath:Lcom/android/gallery3d/data/Path;
    sget-object v11, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 131
    :try_start_0
    invoke-virtual {v7, v1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MtpImage;

    .line 132
    .local v0, image:Lcom/android/gallery3d/data/MtpImage;
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/gallery3d/data/MtpImage;

    .end local v0           #image:Lcom/android/gallery3d/data/MtpImage;
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpDevice;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget v3, p0, Lcom/android/gallery3d/data/MtpDevice;->mDeviceId:I

    iget-object v5, p0, Lcom/android/gallery3d/data/MtpDevice;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/MtpImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/data/MtpContext;)V

    .line 138
    .restart local v0       #image:Lcom/android/gallery3d/data/MtpImage;
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v11

    .line 127
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/MtpImage;->updateContent(Landroid/mtp/MtpObjectInfo;)V

    goto :goto_1

    .line 139
    .end local v0           #image:Lcom/android/gallery3d/data/MtpImage;
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 141
    .end local v1           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v4           #child:Landroid/mtp/MtpObjectInfo;
    :cond_1
    return-object v10
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x800

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/android/gallery3d/data/MtpDevice;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mDataVersion:J

    .line 158
    invoke-direct {p0}, Lcom/android/gallery3d/data/MtpDevice;->loadItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mJpegChildren:Ljava/util/List;

    .line 160
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MtpDevice;->mDataVersion:J

    return-wide v0
.end method
