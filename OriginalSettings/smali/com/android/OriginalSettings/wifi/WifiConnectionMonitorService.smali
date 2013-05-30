.class public Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;
.super Landroid/app/Service;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;,
        Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;
    }
.end annotation


# instance fields
.field mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

.field private mConnectionMonitorThread:Ljava/lang/Thread;

.field mContext:Landroid/content/Context;

.field private mLowSignalTimeCount:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreasholdObserver:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

.field private mThreshold:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 59
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return p1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 268
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 269
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 274
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "WifiConnectionMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWifiSettingScreen: top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.wifi.AccessPointListDialog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.wifi.WifiPickerActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method doWifiConnectionMonitoringPolicy()V
    .locals 5

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 215
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v1, "WifiConnectionMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWifiConnectionMonitoringPolicy, Rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I

    if-gt v1, v2, :cond_1

    .line 218
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 224
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->isWifiSettingScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "doWifiConnectionMonitoringPolicy WifiSettingScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_0

    .line 231
    :cond_2
    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "doWifiConnectionMonitoringPolicy, Disconnect and add to blacklist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 240
    const-string v1, "WifiConnectionMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWifiConnectionMonitoringPolicy, blacklist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 148
    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    .line 152
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConnectionMonitorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    .line 153
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;-><init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    .line 157
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 159
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;-><init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    .line 160
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->register()V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 192
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 173
    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand,  startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method startMonitor()V
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    :cond_0
    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method stopMonitor()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 209
    :cond_0
    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method
