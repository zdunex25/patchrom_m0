.class Landroid/server/BluetoothBondState;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"


# static fields
.field private static final AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/auto_pairing.conf"

.field private static final DBG:Z = true

.field private static final DYNAMIC_AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/data/misc/bluetooth/dynamic_auto_pairing.conf"

.field private static final TAG:Ljava/lang/String; = "BluetoothBondState"


# instance fields
.field private mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

.field private mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private final mContext:Landroid/content/Context;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private mPairingRequestRcvd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutgoingBonding:Ljava/lang/String;

.field private final mPinAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapProxy:Landroid/bluetooth/BluetoothSap;

.field private final mService:Landroid/server/BluetoothService;

.field private final mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    .line 351
    new-instance v1, Landroid/server/BluetoothBondState$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$1;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 534
    new-instance v1, Landroid/server/BluetoothBondState$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothBondState$2;-><init>(Landroid/server/BluetoothBondState;)V

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    .line 89
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-static {v1, v2}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/server/BluetoothBondState;->readAutoPairingData()V

    .line 96
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/server/BluetoothBondState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeProfileProxy()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 338
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x2

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 342
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 343
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 346
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_2

    .line 347
    const/16 v1, 0x8

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 349
    :cond_2
    return-void
.end method

.method private copyAutoPairingData()V
    .locals 11

    .prologue
    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, in:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 379
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    if-eqz v8, :cond_2

    .line 396
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 400
    .end local v2           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 382
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/etc/bluetooth/auto_pairing.conf"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 383
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 385
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_4
    new-array v0, v8, [B

    .line 387
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_4

    .line 388
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    .line 390
    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 391
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 396
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_3
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v8

    goto :goto_0

    .line 396
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 398
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 399
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 392
    .end local v0           #buf:[B
    .end local v2           #file:Ljava/io/File;
    .end local v5           #len:I
    :catch_3
    move-exception v1

    .line 393
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string v8, "BluetoothBondState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: copyAutoPairingData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 396
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_7
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 398
    :catch_4
    move-exception v8

    goto :goto_0

    .line 395
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 396
    :goto_4
    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 398
    :cond_9
    :goto_5
    throw v8

    :catch_5
    move-exception v9

    goto :goto_5

    .line 395
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 392
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 390
    .end local v2           #file:Ljava/io/File;
    :catch_8
    move-exception v1

    goto :goto_2

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 398
    :catch_a
    move-exception v8

    goto/16 :goto_0
.end method

.method private getProfileProxy()V
    .locals 4

    .prologue
    .line 310
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 312
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 317
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 322
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v1, :cond_2

    .line 323
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothBondState;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 326
    :cond_2
    return-void
.end method

.method private loadBondState()V
    .locals 9

    .prologue
    .line 112
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1

    .line 130
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v6

    const-string v7, "Devices"

    invoke-virtual {v6, v7}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, val:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 120
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, bonds:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 125
    const-string v6, "BluetoothBondState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bonded devices"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 127
    .local v2, device:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setProfilePriorities(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "state"

    .prologue
    const/16 v4, 0x64

    const/4 v3, -0x1

    .line 491
    const-string v1, "BluetoothBondState"

    const-string/jumbo v2, "setProfilePriorities****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 494
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, v0, p2}, Landroid/server/BluetoothInputProfileHandler;->setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 500
    const/16 v1, 0xc

    if-ne p2, v1, :cond_6

    .line 501
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 503
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 506
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 508
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 511
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 513
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 529
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v1, :cond_4

    .line 530
    :cond_3
    const-string v1, "BluetoothBondState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_4
    return-void

    .line 515
    :cond_5
    const-string v1, "BluetoothBondState"

    const-string v2, "**********not able to set the priority for Sap **********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_6
    const/16 v1, 0xa

    if-ne p2, v1, :cond_2

    .line 518
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_7

    .line 519
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 521
    :cond_7
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_8

    .line 522
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 524
    :cond_8
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_2

    .line 525
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v0, v3}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method private updateAutoPairingData(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 465
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 466
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v3, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 468
    const-string v4, "DynamicAddressBlacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 478
    if-eqz v2, :cond_3

    .line 480
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 486
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #str:Ljava/lang/StringBuilder;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return-void

    .line 481
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 483
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 473
    .end local v3           #str:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 474
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    if-eqz v1, :cond_1

    .line 480
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 481
    :catch_2
    move-exception v4

    goto :goto_0

    .line 475
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 476
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "BluetoothBondState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: updateAutoPairingData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    if-eqz v1, :cond_1

    .line 480
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 481
    :catch_4
    move-exception v4

    goto :goto_0

    .line 478
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 480
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 483
    :cond_2
    :goto_4
    throw v4

    .line 481
    :catch_5
    move-exception v5

    goto :goto_4

    .line 478
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 475
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 473
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothBondState;->updateAutoPairingData(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 299
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x1

    .line 304
    .local v1, newAttempt:I
    :goto_0
    const-string v2, "BluetoothBondState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attemp newAttempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 302
    .end local v1           #newAttempt:I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I
    goto :goto_0

    .line 297
    .end local v0           #attempt:Ljava/lang/Integer;
    .end local v1           #newAttempt:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothBondState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPinAttempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->closeProfileProxy()V

    .line 332
    return-void
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 293
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 289
    .end local v0           #attempt:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 248
    const/16 v1, 0xa

    .line 250
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 246
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initBondState()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    .line 108
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->loadBondState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    .line 203
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v4

    .line 209
    :cond_1
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 215
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 217
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 218
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 223
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 224
    iget-object v5, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 229
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 237
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 242
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 4
    .parameter "state"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 260
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized readAutoPairingData()V
    .locals 13

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_1

    .line 458
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->copyAutoPairingData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, fstream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 407
    .local v5, in:Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 409
    .local v1, file:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 410
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v4, fstream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    .line 411
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    .line 413
    .end local v1           #file:Ljava/io/BufferedReader;
    .local v2, file:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 414
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 415
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "//"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 416
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, value:[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 418
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, val:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "AddressBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 420
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 439
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 440
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    const-string v10, "BluetoothBondState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileNotFoundException: readAutoPairingData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 445
    if-eqz v3, :cond_3

    .line 446
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 450
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 451
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 454
    :cond_4
    :goto_4
    if-eqz v1, :cond_0

    .line 455
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 456
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 422
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    :try_start_a
    aget-object v10, v9, v10

    const-string v11, "ExactNameBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 423
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 441
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 442
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_5
    :try_start_b
    const-string v10, "BluetoothBondState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException: readAutoPairingData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 445
    if-eqz v3, :cond_6

    .line 446
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 450
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 451
    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 454
    :cond_7
    :goto_7
    if-eqz v1, :cond_0

    .line 455
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 456
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 425
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    :try_start_f
    aget-object v10, v9, v10

    const-string v11, "PartialNameBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 426
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 444
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 445
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_8
    if-eqz v3, :cond_9

    .line 446
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 450
    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    .line 451
    :try_start_11
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 454
    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    .line 455
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 456
    :cond_b
    :goto_b
    :try_start_13
    throw v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 403
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 428
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #val:[Ljava/lang/String;
    .restart local v9       #value:[Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    :try_start_14
    aget-object v10, v9, v10

    const-string v11, "FixedPinZerosKeyboardBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 429
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingFixedPinZerosKeyboardList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 431
    :cond_d
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "DynamicAddressBlacklist"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 432
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Landroid/server/BluetoothBondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 435
    :cond_e
    const-string v10, "BluetoothBondState"

    const-string v11, "Error parsing Auto pairing blacklist file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_1

    .line 445
    .end local v8           #val:[Ljava/lang/String;
    .end local v9           #value:[Ljava/lang/String;
    :cond_f
    if-eqz v4, :cond_10

    .line 446
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    .line 450
    :cond_10
    :goto_c
    if-eqz v6, :cond_11

    .line 451
    :try_start_16
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    .line 454
    :cond_11
    :goto_d
    if-eqz v2, :cond_12

    .line 455
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    :cond_12
    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 456
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v10

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 457
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 447
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v10

    goto :goto_c

    .line 452
    :catch_6
    move-exception v10

    goto :goto_d

    .line 447
    .end local v2           #file:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v6           #in:Ljava/io/DataInputStream;
    .end local v7           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v10

    goto/16 :goto_3

    .line 452
    :catch_8
    move-exception v10

    goto/16 :goto_4

    .line 447
    .local v0, e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    goto/16 :goto_6

    .line 452
    :catch_a
    move-exception v10

    goto/16 :goto_7

    .line 447
    .end local v0           #e:Ljava/io/IOException;
    :catch_b
    move-exception v11

    goto :goto_9

    .line 452
    :catch_c
    move-exception v11

    goto :goto_a

    .line 456
    :catch_d
    move-exception v11

    goto :goto_b

    .line 444
    :catchall_2
    move-exception v10

    goto :goto_8

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_4
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 441
    :catch_e
    move-exception v0

    goto/16 :goto_5

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 439
    :catch_11
    move-exception v0

    goto/16 :goto_2

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_13
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .locals 9
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    .line 138
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBondState address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 141
    .local v1, oldState:I
    if-ne v1, p2, :cond_0

    .line 200
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    if-ne v1, v8, :cond_1

    if-ne p2, v6, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_1

    .line 149
    :try_start_1
    const-string v3, "BluetoothBondState"

    const-string v4, "If it was paired with the device do not unpair when we canceled the bonding process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v1           #oldState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 156
    .restart local v1       #oldState:I
    :cond_1
    if-ne v1, v7, :cond_2

    .line 157
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;

    .line 162
    :cond_2
    if-ne p2, v8, :cond_6

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, setTrust:Z
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 166
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, v2}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 167
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v2           #setTrust:Z
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothBondState;->setProfilePriorities(Ljava/lang/String;I)V

    .line 180
    const-string v3, "BluetoothBondState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address bond state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothBondState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    if-ne p2, v6, :cond_9

    .line 188
    if-gtz p3, :cond_5

    .line 189
    const-string v3, "BluetoothBondState"

    const-string/jumbo v4, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 p3, 0x9

    .line 193
    :cond_5
    const-string v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_2
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    if-ne p2, v7, :cond_8

    .line 170
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;

    if-nez v3, :cond_4

    .line 171
    :cond_7
    invoke-direct {p0}, Landroid/server/BluetoothBondState;->getProfileProxy()V

    goto/16 :goto_1

    .line 173
    :cond_8
    if-ne p2, v6, :cond_4

    .line 174
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_9
    iget-object v3, p0, Landroid/server/BluetoothBondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized setPendingOutgoingBonding(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/server/BluetoothBondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
