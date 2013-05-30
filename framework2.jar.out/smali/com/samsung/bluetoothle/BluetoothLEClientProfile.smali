.class public abstract Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
.super Ljava/lang/Object;
.source "BluetoothLEClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final GATT_STATE_CONNECTED:I = 0x2

.field public static final GATT_STATE_CONNECTING:I = 0x1

.field public static final GATT_STATE_DISCONNECTED:I = 0x0

.field public static final GATT_STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientProfile"

.field private static mState:I


# instance fields
.field private mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

.field private final mHandler:Landroid/os/Handler;

.field private mRequiredServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientService;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;

    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;-><init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    .line 143
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "BluetoothLEClientProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;-><init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    .line 146
    invoke-static {}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    .line 148
    return-void
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 324
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public connectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 170
    const-string v2, "BluetoothLEClientProfile"

    const-string v3, "connectLEDevice"

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 172
    sput v1, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    .line 173
    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LE device connection state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LE device connection state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x3

    .line 191
    const-string v1, "BluetoothLEClientProfile"

    const-string v2, "disconnectLEDevice"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sput v4, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    .line 193
    const-string v1, "BluetoothLEClientProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LE device connection state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "BluetoothLEClientProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LE device connection state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    const/4 v1, 0x1

    .line 203
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 264
    const-string v1, "BluetoothLEClientProfile"

    const-string v2, "discoverCharacteristics"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget v1, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "finish"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    sput v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    .line 316
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    .line 317
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    .line 318
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    .line 319
    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    .line 320
    return-void
.end method

.method public getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    return-object v0
.end method

.method public getLEProfileState()I
    .locals 3

    .prologue
    .line 288
    const-string v0, "BluetoothLEClientProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLEProfileState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    return v0
.end method

.method public getRssiValue(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 212
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "getRssiValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getRssiValue(Landroid/bluetooth/BluetoothDevice;)V

    .line 214
    return-void
.end method

.method public onDiscoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 249
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onDiscoverCharacteristics"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onGetRssiValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "rssival"

    .prologue
    .line 258
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onGetRssiValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public onLEDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 229
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLEDeviceConnected"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onLEDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 236
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLEDeviceDisconnected"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onLELinkLoss(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 244
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLELinkLoss"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public registerLEProfile(Ljava/util/ArrayList;)V
    .locals 2
    .parameter "services"

    .prologue
    .line 220
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "registerLEProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    .line 222
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->registerLEProfile(Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;)V

    .line 223
    return-void
.end method

.method public setRemoteDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 160
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "setRemoteDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->setRemoteDeviceAddress(Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    return-void
.end method

.method public unregisterLEProfile()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "unregisterLEProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->disconnectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->unregisterLEProfile()V

    .line 310
    return-void
.end method

.method updateRefreshState(Ljava/lang/String;)V
    .locals 3
    .parameter "servicePath"

    .prologue
    .line 296
    const-string v1, "BluetoothLEClientProfile"

    const-string v2, "updateRefreshState"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 299
    .local v0, i:I
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->getServicePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onDiscoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V

    .line 301
    :cond_0
    return-void
.end method
