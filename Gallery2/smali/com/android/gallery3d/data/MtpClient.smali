.class public Lcom/android/gallery3d/data/MtpClient;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MtpClient$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoredDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MtpClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionIntent:Landroid/app/PendingIntent;

.field private final mRequestPermissionDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Lcom/android/gallery3d/data/MtpClient$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/MtpClient$1;-><init>(Lcom/android/gallery3d/data/MtpClient;)V

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    .line 169
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/MtpClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isCamera(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 150
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 151
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 153
    .local v2, intf:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 159
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :goto_1
    return v3

    .line 151
    .restart local v2       #intf:Landroid/hardware/usb/UsbInterface;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 5
    .parameter "usbDevice"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, deviceName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/gallery3d/data/MtpClient;->isCamera(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/android/gallery3d/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 194
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 197
    .local v0, connection:Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_3

    .line 198
    new-instance v2, Landroid/mtp/MtpDevice;

    invoke-direct {v2, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 199
    .local v2, mtpDevice:Landroid/mtp/MtpDevice;
    invoke-virtual {v2, v0}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v2           #mtpDevice:Landroid/mtp/MtpDevice;
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevice(I)Landroid/mtp/MtpDevice;
    .locals 3
    .parameter "id"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v3, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 283
    .local v1, usbDevice:Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    invoke-direct {p0, v1}, Lcom/android/gallery3d/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    goto :goto_0

    .line 289
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #usbDevice:Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 288
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getObject(Ljava/lang/String;II)[B
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "objectSize"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 405
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 333
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 336
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectList(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .parameter "deviceName"
    .parameter "storageId"
    .parameter "objectHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 369
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_1

    .line 391
    :cond_0
    return-object v5

    .line 372
    :cond_1
    if-nez p3, :cond_2

    .line 374
    const/4 p3, -0x1

    .line 376
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, p2, v6, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v1

    .line 377
    .local v1, handles:[I
    if-eqz v1, :cond_0

    .line 381
    array-length v4, v1

    .line 382
    .local v4, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v5, objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 384
    aget v6, v1, v2

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v3

    .line 385
    .local v3, info:Landroid/mtp/MtpObjectInfo;
    if-nez v3, :cond_3

    .line 386
    const-string v6, "MtpClient"

    const-string v7, "getObjectInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getStorageList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpStorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 301
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_1

    .line 319
    :cond_0
    return-object v5

    .line 304
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v4

    .line 305
    .local v4, storageIds:[I
    if-eqz v4, :cond_0

    .line 309
    array-length v3, v4

    .line 310
    .local v3, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v5, storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpStorageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 312
    aget v6, v4, v1

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v2

    .line 313
    .local v2, info:Landroid/mtp/MtpStorageInfo;
    if-nez v2, :cond_2

    .line 314
    const-string v6, "MtpClient"

    const-string v7, "getStorageInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getThumbnail(Ljava/lang/String;I)[B
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 420
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 421
    const/4 v1, 0x0

    .line 423
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "destPath"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 438
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 439
    const/4 v1, 0x0

    .line 441
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/gallery3d/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
