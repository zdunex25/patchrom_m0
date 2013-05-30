.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static mContext:Landroid/content/Context;

.field private static mCpuLockEnabled:Z

.field private static m_bAlive:Z


# instance fields
.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlockedRemoteEvents:Z

.field private mConnectionType:I

.field private mCurrentWDState:I

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mFrequency:I

.field private mPauseMode:Z

.field private mPhoneCall:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 123
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 108
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 110
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 113
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 116
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 117
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 121
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 125
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    .line 156
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 346
    return-void
.end method

.method private StartRTSP()V
    .locals 5

    .prologue
    .line 519
    const v0, 0xc000

    .line 525
    .local v0, lListeningPort:I
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wfd native start port :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v1, 0x1

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/wfd/WFDNative;->start(IIIII)Z

    .line 529
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->startForegroundCompat()V

    .line 530
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/wfd/WFDSourceService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WFDSourceService;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 576
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private setRtpTransport(III)Z
    .locals 1
    .parameter "transportType"
    .parameter "bufferLengthMs"
    .parameter "port"

    .prologue
    .line 484
    invoke-static {p1, p2, p3}, Lcom/samsung/wfd/WFDNative;->setRtpTransport(III)Z

    move-result v0

    .line 486
    .local v0, nRet:Z
    return v0
.end method

.method private startForegroundCompat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 588
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 589
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 592
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 593
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 595
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 596
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 601
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 130
    const/4 v2, 0x0

    .line 134
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 152
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 146
    :catch_2
    move-exception v1

    .line 147
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 189
    const-string v5, "WFDSourceService"

    const-string v6, "Bind!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v5, "freq"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 192
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v5, "/sys/devices/system/cpu/busfreq/curr_freq"

    const v6, 0x61b48

    invoke-static {v5, v6}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    const-string v5, "WFDSourceService"

    const-string v6, "bus frequency lock success onBind"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v5, :cond_0

    .line 203
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 206
    :cond_0
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v4

    .line 211
    .local v4, supportedFreq:[I
    :try_start_0
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const/4 v7, 0x4

    aget v7, v4, v7

    const-string v8, "WFDSourceService"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$DVFSLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_2
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wfd fix DVFS_MIN_LIMIT by freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sput-boolean v9, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 228
    .end local v4           #supportedFreq:[I
    :cond_1
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 229
    .local v0, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v5, "WFDSourceService"

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 230
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 231
    const-string v5, "WFDSourceService"

    const-string v6, "wifi lock acquire!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v10, p0, Lcom/samsung/wfd/WFDSourceService;->mCurrentWDState:I

    .line 239
    sput-boolean v9, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 241
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    .local v1, context:Landroid/content/Context;
    sput-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {v1}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 244
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    .line 246
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v5, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v5, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v5, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v5, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v5, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    new-instance v5, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 264
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v5

    .line 198
    .end local v0           #WifiMgr:Landroid/net/wifi/WifiManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v5, "WFDSourceService"

    const-string v6, "bus frequency lock fail onBind"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .restart local v4       #supportedFreq:[I
    :catch_0
    move-exception v2

    .line 213
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "WFDSourceService"

    const-string v6, "newDVFSLock is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 219
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 220
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "WFDSourceService"

    const-string v6, "mDVFSLock.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 319
    const-string v1, "WFDSourceService"

    const-string v2, "create WFD Source service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v1, v3}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock success onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 343
    :cond_0
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 325
    :cond_1
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock failed  onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 536
    const-string v1, "WFDSourceService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v1, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v1, v3}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock success onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 546
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_1
    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 572
    :cond_0
    return-void

    .line 542
    :cond_1
    const-string v1, "WFDSourceService"

    const-string v2, "bus frequency unlock failed  onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 492
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 494
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 495
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 499
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 515
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string v2, "WFDSourceService"

    const-string v3, "unBind!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    const-string v2, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-static {v2, v4}, Lcom/samsung/wfd/WFDSourceService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "WFDSourceService"

    const-string v3, "bus frequency unlock success onUnbind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    const-string v2, "WFDSourceService"

    const-string v3, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 295
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 298
    :cond_0
    const-string v2, "WFDSourceService"

    const-string v3, "wifi lock release!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 307
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 309
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->stopForegroundCompat()V

    .line 311
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 280
    :cond_1
    const-string v2, "WFDSourceService"

    const-string v3, "bus frequency unlock failed  onUnbind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WFDSourceService"

    const-string v3, "mDVFSLock.release is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method teardownForAudioOut()V
    .locals 3

    .prologue
    .line 580
    const-string v1, "WFDSourceService"

    const-string v2, "teardownForAudioOut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    :cond_0
    return-void
.end method
