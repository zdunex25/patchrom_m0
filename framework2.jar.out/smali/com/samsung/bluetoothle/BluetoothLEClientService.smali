.class public abstract Lcom/samsung/bluetoothle/BluetoothLEClientService;
.super Ljava/lang/Object;
.source "BluetoothLEClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final GATT_WRITE_CMD:I = 0x0

.field public static final GATT_WRITE_REQ:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientService"


# instance fields
.field private discoverCharInProgress:Z

.field private isDiscoverCharByUUID:Z

.field private mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;

.field private mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

.field private mServiceChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientChar;",
            ">;"
        }
    .end annotation
.end field

.field private mServicePath:Ljava/lang/String;

.field private mServiceUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "uuid"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharInProgress:Z

    .line 145
    const-string v0, "BluetoothLEClientService"

    const-string v1, "BluetoothLEClientService"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceUUID:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;

    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;-><init>(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;

    .line 148
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 409
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/bluetoothle/BluetoothLEClientService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateSingleChar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateServiceChars(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private getCharbyPath(Ljava/lang/String;)Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .locals 4
    .parameter "charPath"

    .prologue
    .line 344
    const-string v2, "BluetoothLEClientService"

    const-string v3, "getCharbyPath"

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 347
    .local v0, c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    .end local v0           #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    :goto_1
    return-object v0

    .line 345
    .restart local v0       #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v0           #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateServiceChars(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "address"
    .parameter "charPaths"

    .prologue
    .line 290
    const-string v4, "BluetoothLEClientService"

    const-string v5, "updateServiceChars"

    invoke-direct {p0, v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getLEProfileState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 292
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 293
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 294
    const-string v4, "BluetoothLEClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Charpath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, p1, v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, charProperties:[Ljava/lang/String;
    new-instance v1, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    aget-object v4, p2, v2

    invoke-direct {v1, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    if-eqz v0, :cond_1

    .line 298
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 299
    aget-object v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v0           #charProperties:[Ljava/lang/String;
    .end local v1           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    :cond_2
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->updateRefreshState(Ljava/lang/String;)V

    .line 306
    .end local v2           #i:I
    :cond_3
    return-void
.end method

.method private updateSingleChar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "address"
    .parameter "charPath"

    .prologue
    .line 309
    const-string v4, "BluetoothLEClientService"

    const-string v5, "updateSingleChar"

    invoke-direct {p0, v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, insertFlag:Z
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getLEProfileState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 313
    invoke-direct {p0, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->getCharbyPath(Ljava/lang/String;)Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    move-result-object v1

    .line 314
    .local v1, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    if-nez v1, :cond_0

    .line 315
    new-instance v1, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .end local v1           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-direct {v1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v1       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v2, 0x1

    .line 319
    :cond_0
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, charProperties:[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 321
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 322
    aget-object v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 325
    :cond_1
    if-eqz v2, :cond_2

    .line 326
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onDiscoverCharacteristics(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)V

    .line 332
    .end local v0           #charProperties:[Ljava/lang/String;
    .end local v1           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .end local v3           #j:I
    :cond_3
    return-void
.end method

.method private declared-synchronized waitDiscoveryDone()V
    .locals 3

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothLEClientService"

    const-string v2, "waitDiscoveryDone"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const-wide/32 v1, 0x11170

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "BluetoothLEClientService"

    const-string v2, "Characteristics discovery takes too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 260
    const-string v0, "BluetoothLEClientService"

    const-string v1, "discoverCharacteristics"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 264
    iget-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharInProgress:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->waitDiscoveryDone()V

    .line 267
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 268
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    const-string v3, "0xffff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    :cond_1
    return-void
.end method

.method public discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4
    .parameter "device"
    .parameter "charUUID"

    .prologue
    const/4 v3, 0x1

    .line 277
    const-string v0, "BluetoothLEClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverCharacteristics :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 280
    iget-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharInProgress:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->waitDiscoveryDone()V

    .line 283
    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 284
    iput-boolean v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z

    .line 285
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    :cond_1
    return-void
.end method

.method public getAllChars(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;
    .locals 2
    .parameter "remoteDevice"

    .prologue
    .line 180
    const-string v0, "BluetoothLEClientService"

    const-string v1, "getAllChars"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharbyUUID(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .locals 4
    .parameter "remoteDevice"
    .parameter "charUUID"

    .prologue
    .line 189
    const-string v2, "BluetoothLEClientService"

    const-string v3, "getChar"

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 193
    .local v0, c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    .end local v0           #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .end local v1           #i:I
    :goto_1
    return-object v0

    .line 191
    .restart local v0       #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0           #c:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    return-object v0
.end method

.method getServiceUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    const-string v0, "BluetoothLEClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceUUID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceUUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceUUID:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V
    .locals 5
    .parameter "device"
    .parameter "profile"

    .prologue
    .line 157
    const-string v3, "BluetoothLEClientService"

    const-string v4, "init"

    invoke-direct {p0, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getRemoteServicePaths()[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, servicePaths:[Ljava/lang/String;
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 163
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, uuidString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceUUID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    aget-object v3, v1, v0

    iput-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->registerLEServiceCallback()V

    .line 175
    .end local v2           #uuidString:Ljava/lang/String;
    :cond_1
    return-void

    .line 162
    .restart local v2       #uuidString:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method isCharDiscoveryInProgress()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharInProgress:Z

    return v0
.end method

.method public onDiscoverCharacteristics(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)V
    .locals 2
    .parameter "clientChar"

    .prologue
    .line 395
    const-string v0, "BluetoothLEClientService"

    const-string v1, "onDiscoverCharacteristics"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public onWatcherValueChanged(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)V
    .locals 2
    .parameter "clientChar"

    .prologue
    .line 380
    const-string v0, "BluetoothLEClientService"

    const-string v1, "onWatcherValueChanged"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onWriteCharValue(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V
    .locals 2
    .parameter "clientChar"
    .parameter "status"

    .prologue
    .line 385
    const-string v0, "BluetoothLEClientService"

    const-string v1, "onWriteCharValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public onWriteClientConfigDesc(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V
    .locals 2
    .parameter "clientChar"
    .parameter "status"

    .prologue
    .line 390
    const-string v0, "BluetoothLEClientService"

    const-string v1, "onWriteClientConfigDesc"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public readCharValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)I
    .locals 2
    .parameter "remoteDevice"
    .parameter "charUUID"

    .prologue
    .line 205
    const-string v0, "BluetoothLEClientService"

    const-string v1, "readCharValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public registerLEServiceCallback()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "BluetoothLEClientService"

    const-string v1, "registerLEServiceCallback"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->registerLEServiceCallback(Ljava/lang/String;Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;)V

    .line 359
    return-void
.end method

.method public registerWatcher()Z
    .locals 2

    .prologue
    .line 366
    const-string v0, "BluetoothLEClientService"

    const-string v1, "registerWatcher"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->registerWatcher(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setCharDiscoveryProgress(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 248
    const-string v0, "BluetoothLEClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDiscoveryProgress::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-boolean p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharInProgress:Z

    .line 250
    return-void
.end method

.method public unregisterWatcher()Z
    .locals 2

    .prologue
    .line 372
    const-string v0, "BluetoothLEClientService"

    const-string v1, "unregisterWatcher"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->unregisterWatcher(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeCharValue(Lcom/samsung/bluetoothle/BluetoothLEClientChar;I)I
    .locals 6
    .parameter "clientChar"
    .parameter "writeType"

    .prologue
    .line 215
    const-string v0, "BluetoothLEClientService"

    const-string v4, "writeCharValue"

    invoke-direct {p0, v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, address:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharVaule()[B

    move-result-object v5

    .line 221
    .local v5, value:[B
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 222
    const-string v2, "WRITE_REQ"

    .line 226
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    const-string v4, "Value"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 229
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_2
    if-nez p2, :cond_0

    .line 224
    const-string v2, "WRITE_CMD"

    goto :goto_0
.end method

.method public writeClientConfigDesc(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)I
    .locals 6
    .parameter "clientChar"

    .prologue
    .line 236
    const-string v0, "BluetoothLEClientService"

    const-string v2, "writeClientConfigDesc"

    invoke-direct {p0, v0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, address:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getClientConfigDesc()[B

    move-result-object v5

    .line 240
    .local v5, value:[B
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService;->mProfile:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    const-string v2, "WRITE_REQ"

    const-string v4, "ClientConfiguration"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
