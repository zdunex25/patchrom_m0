.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# static fields
.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DIALOG_TIMER_MAX:J = 0x240c8400L

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I

.field public static USER_PRESSED_OK:I

.field public static USER_PRESSED_TURN_OFF_WIFI:I

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field private ACTION_DELETE_REQUEST:Ljava/lang/String;

.field public DATA_USAGE_THRESHOLD:I

.field private final DONT_USE_WIFI_PRESS_TIMER:I

.field private EXTRA_SSID:Ljava/lang/String;

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field private am:Landroid/app/ActivityManager;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private baseStation:I

.field private blacklistedApps:[Ljava/lang/String;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private cellLocation:Landroid/telephony/CellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field public currentIntelScanMode:Z

.field private data_usage:J

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field public dontUsePressTime:J

.field dont_use_counter:I

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private isdontUseWifiTimerRuning:Z

.field private lastWifiScanTime:J

.field private launch_count:J

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mIsTablet:Z

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mWaitForScanResults:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevStationID:I

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private processName:Ljava/lang/String;

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field timer_delay:J

.field private tm:Landroid/telephony/TelephonyManager;

.field private user_id:I

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 128
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 129
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 131
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 169
    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    .line 170
    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    .line 171
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    .line 172
    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    .line 918
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    .line 919
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 123
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 133
    const-string v1, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    .line 134
    const-string v1, "delete_ssid"

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    .line 142
    iput v4, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 143
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 144
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 145
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 147
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 151
    iput v3, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 152
    iput v3, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 154
    iput v4, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 157
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 160
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/WifiOffloadService;->DONT_USE_WIFI_PRESS_TIMER:I

    .line 163
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 168
    iput v4, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 174
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 177
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 181
    iput v4, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 187
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 188
    iput v3, p0, Lcom/android/server/WifiOffloadService;->user_id:I

    .line 189
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    .line 190
    iput-wide v6, p0, Lcom/android/server/WifiOffloadService;->data_usage:J

    .line 191
    iput-wide v6, p0, Lcom/android/server/WifiOffloadService;->launch_count:J

    .line 192
    iput v8, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 193
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    .line 198
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 202
    iput-wide v6, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    .line 207
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 214
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 216
    iput v4, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    .line 225
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 505
    new-instance v1, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    .line 556
    new-instance v1, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    new-instance v1, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    iput-wide v6, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 674
    iput-wide v6, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 675
    iput v8, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1113
    new-instance v1, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    .line 1128
    new-instance v1, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    .line 1238
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1303
    new-instance v1, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1334
    new-instance v1, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2077
    iput v4, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 237
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 239
    const-string v1, "WifiOffloadService is started . . ."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    .line 243
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, mInterfaceName:Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiNative;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 253
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 255
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 256
    const-string v1, "WifiOffloadService"

    const-string v2, "WifiManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 262
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->am:Landroid/app/ActivityManager;

    .line 264
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 267
    const-string v1, "persist.offload.dontuse.time"

    const-string v2, "30"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "persist.offload.datausage.limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiOffloadService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->insertDataUsage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/WifiOffloadService;Landroid/net/INetworkStatsSession;)Landroid/net/INetworkStatsSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->EXTRA_SSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->ACTION_DELETE_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/WifiOffloadService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .locals 4
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1769
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1770
    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 1771
    const-string v2, "TABLET blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1772
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 1779
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 1788
    :cond_1
    :goto_1
    return v1

    .line 1774
    :cond_2
    const-string v2, "Smartphone blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1775
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    goto :goto_0

    .line 1781
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1783
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1784
    const/4 v1, 0x1

    goto :goto_1

    .line 1781
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .locals 4
    .parameter "appName"

    .prologue
    const/4 v1, 0x0

    .line 1806
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return v1

    .line 1808
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1810
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1811
    const/4 v1, 0x1

    goto :goto_0

    .line 1808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2041
    const/4 v0, -0x1

    .line 2044
    .local v0, perm:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2048
    :goto_0
    if-nez v0, :cond_0

    .line 2049
    const/4 v2, 0x1

    .line 2051
    :goto_1
    return v2

    .line 2045
    :catch_0
    move-exception v1

    .line 2046
    .local v1, re:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in checkInternetPermission"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2051
    .end local v1           #re:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .locals 7
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 487
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 488
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 489
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 490
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 492
    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    .line 501
    .end local v0           #iterator:Ljava/util/Iterator;
    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return v4

    .line 497
    .restart local v0       #iterator:Ljava/util/Iterator;
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 1520
    if-nez p0, :cond_1

    .line 1521
    const-string p0, ""

    .line 1532
    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .line 1523
    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1524
    const-string p0, ""

    goto :goto_0

    .line 1527
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1528
    .restart local v0       #lastPos:I
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1529
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 2014
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2016
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2019
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataUsageforUID(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1858
    const-string v0, "getDataUsageforApp ()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1861
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$12;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1984
    return-void
.end method

.method private getDialogShown()Z
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1441
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .locals 7

    .prologue
    .line 1151
    iget v5, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    .line 1152
    .local v4, wifiLocationNetworks:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 1153
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1154
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_1

    .line 1169
    .end local v3           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 1156
    .restart local v3       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1158
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 1159
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_0

    .line 1161
    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1162
    const-string v5, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1167
    .end local v0           #i:I
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_0
.end method

.method private insertDataUsage(I)Z
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    .line 2024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDataUsage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2026
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2027
    .local v0, cvalues:Landroid/content/ContentValues;
    const-string v3, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2028
    const-string v3, "pkgname"

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v3, "launchcount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2030
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data_usage"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    .end local v0           #cvalues:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 2032
    :catch_0
    move-exception v1

    .line 2033
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in insertDataUsage for dbHelper"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 774
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 780
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 776
    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "Settings AIRPLANE_MODE_ON not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 780
    goto :goto_0
.end method

.method private isAnyDataActivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, counter:I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    .line 816
    .local v1, dataActivity:I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 829
    .end local v1           #dataActivity:I
    :cond_0
    :goto_1
    return v3

    .line 822
    .restart local v1       #dataActivity:I
    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :catch_0
    move-exception v2

    .line 824
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 829
    .end local v1           #dataActivity:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)V
    .locals 2
    .parameter "processName"

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 987
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private isForeGroundAppRunning()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForeGroundAppRunning "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1821
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1822
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1823
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForeGroundAppRunning  : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1832
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return v3

    .line 1829
    :catch_0
    move-exception v1

    .line 1830
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "WifiOffloadService"

    const-string v4, "Exception in isForeGroundAppRunning check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move v3, v5

    .line 1832
    goto :goto_0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 789
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 793
    const-string v0, "No wifiManager."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    .line 801
    :goto_0
    return v0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 797
    const-string v0, "Hotspot is ON"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_2
    const-string v0, "Hotspot is Off"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 854
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTempPopupBlocked(I)Z
    .locals 1
    .parameter "stationID"

    .prologue
    .line 1632
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_0

    .line 1633
    const-string v0, "back key logic we are on the same base station"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1634
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1637
    :goto_0
    return v0

    .line 1636
    :cond_0
    const-string v0, "back key logic, looks like location changed"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1637
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isdontUseWifiTimerRuning(I)Z
    .locals 5
    .parameter "stationID"

    .prologue
    const/4 v0, 0x0

    .line 697
    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v1, :cond_2

    .line 698
    iget v1, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v1, p1, :cond_1

    .line 699
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer is runing but location didn\'t change, TIMER_DELAY) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 701
    const-string v1, ">>>>>>>>>>>>>>>>>>>timer didn\'t executed so resetting the flag in diff location!!!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 702
    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 704
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 710
    :goto_0
    return v0

    .line 706
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0

    .line 710
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    goto :goto_0
.end method

.method private notifyDataUsageObject()V
    .locals 2

    .prologue
    .line 1987
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1988
    :try_start_0
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1989
    monitor-exit v1

    .line 1990
    return-void

    .line 1989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWaitForDialogShown()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1219
    return-void
.end method

.method private setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 234
    return-void
.end method

.method private showAppRunningOverWifiDialog()V
    .locals 5

    .prologue
    .line 524
    const-string v3, "showAppRunningOverWifiDialog ---------------->>>>>>>>>>>>>>"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 526
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 537
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    :cond_0
    move v0, v1

    .line 539
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_1
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 1199
    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1201
    :try_start_0
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1206
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    const-string v3, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>>"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1279
    packed-switch p0, :pswitch_data_0

    .line 1289
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1281
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1283
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1285
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1287
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .locals 3
    .parameter "mStationId"
    .parameter "isBlock"

    .prologue
    const/4 v2, 0x1

    .line 1594
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_1

    .line 1595
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1596
    const-string v0, "wifi offload : Okay, we can show pop up next time"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1610
    :goto_0
    return v2

    .line 1598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporary pop up blocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1599
    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1600
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_0

    .line 1604
    :cond_1
    const-string v0, "wifi offload : different station id so reset value"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1606
    sput v2, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 1607
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_0
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .locals 5
    .parameter "packagName"

    .prologue
    .line 1995
    sget-object v2, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1996
    :try_start_0
    const-string v1, "Calling data usage in seperate thread"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    :try_start_1
    const-string v1, "waiting here"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2001
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2006
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2007
    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v2

    return v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2008
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 4
    .parameter "taskID"

    .prologue
    .line 1228
    const-string v2, "Move task to front..!!"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1231
    .local v1, manager:Landroid/app/IActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception move task to front"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 954
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    const-string v3, "test 1 passed for starting"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 957
    const/4 v1, -0x1

    .line 959
    .local v1, perm:I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 963
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 965
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 966
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 977
    .end local v1           #perm:I
    :cond_0
    :goto_1
    return-void

    .line 960
    .restart local v1       #perm:I
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0

    .line 969
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 971
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    .line 972
    .local v2, result:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now turning ON wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 975
    .end local v2           #result:Z
    :cond_2
    const-string v3, "starting activity now"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkIsWifiConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1241
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    move v1, v2

    .line 1268
    :goto_0
    return v1

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1249
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1250
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1251
    const-string v1, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1252
    goto :goto_0

    .line 1255
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1257
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1258
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_3

    move v1, v2

    .line 1259
    goto :goto_0

    .line 1261
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1262
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1263
    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v3

    .line 1264
    goto :goto_0

    .line 1266
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1267
    const-string v1, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1268
    goto :goto_0
.end method

.method public checkisScreenOn()Z
    .locals 4

    .prologue
    .line 1541
    const-string v2, "checkisScreenOn()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1543
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1544
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1547
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return v2

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception when checking is screen on"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAllAccessPoints()V
    .locals 6

    .prologue
    .line 2136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :goto_0
    return-void

    .line 2137
    :catch_0
    move-exception v0

    .line 2138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    const-string v2, "Exception in test api clearAllAccessPoints"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public collectWiFiDetails()V
    .locals 3

    .prologue
    .line 1421
    const-string v1, "getWiFiDetails()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1423
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 1435
    :cond_1
    :goto_0
    return-void

    .line 1429
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1430
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createWiFiOffloadDB()V
    .locals 4

    .prologue
    .line 1296
    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 1297
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_0
    return-void

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .locals 7
    .parameter "networkName"

    .prologue
    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1841
    const/4 v1, 0x0

    .line 1843
    .local v1, rows:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1847
    :goto_0
    if-lez v1, :cond_0

    .line 1848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1850
    :cond_0
    return v1

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in delete network"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "pkgName"
    .parameter "action"

    .prologue
    const/4 v6, 0x0

    .line 922
    const-string v2, "doOffloadStuff()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v1

    .line 925
    .local v1, wifiIntelligentMode:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 927
    if-eqz v1, :cond_0

    .line 928
    if-eqz p1, :cond_2

    .line 929
    sget-object v3, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v3

    .line 930
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process pkName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :try_start_1
    sget-object v2, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 938
    :goto_0
    :try_start_2
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->isRunning:Z

    if-eqz v2, :cond_1

    .line 939
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 940
    monitor-exit v3

    .line 949
    :cond_0
    :goto_1
    return v6

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 945
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V

    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offload pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getActualState()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 1018
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    :goto_0
    return v0

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2085
    const/4 v10, 0x0

    .line 2086
    .local v10, ssIDs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2088
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    const-string v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2094
    if-eqz v7, :cond_2

    .line 2095
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 2096
    const/4 v8, 0x0

    .line 2097
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    :cond_0
    const-string v0, "wifissid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 2100
    add-int/lit8 v8, v8, 0x1

    .line 2101
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    .line 2106
    .end local v8           #count:I
    :goto_0
    return-object v0

    .line 2089
    :catch_0
    move-exception v9

    .line 2090
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getAvailableSSIDNames for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 2091
    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v11

    .line 2106
    goto :goto_0
.end method

.method public getCDMABaseStationID()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1451
    const-string v3, "getCDMABaseStationID()"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1453
    const/4 v0, -0x1

    .line 1454
    .local v0, baseStation:I
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_0

    .line 1455
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1515
    :goto_0
    return v3

    .line 1457
    :cond_0
    const/4 v2, -0x1

    .line 1459
    .local v2, phoneType:I
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    .line 1460
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    move v3, v4

    .line 1461
    goto :goto_0

    .line 1482
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 1483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1485
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1487
    .local v1, cellLocation:Landroid/telephony/CellLocation;
    if-nez v1, :cond_2

    .line 1488
    const-string v3, "CellLocation is NULL, return -1"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1489
    goto :goto_0

    .line 1492
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1493
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_4

    .line 1494
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #cellLocation:Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1495
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_3

    .line 1496
    const-string v3, "CDMA location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1497
    goto :goto_0

    .line 1499
    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 1512
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    .line 1515
    goto :goto_0

    .line 1501
    .restart local v1       #cellLocation:Landroid/telephony/CellLocation;
    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1502
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_4

    .line 1503
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #cellLocation:Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 1504
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-nez v3, :cond_6

    .line 1505
    const-string v3, "GSM location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1506
    goto/16 :goto_0

    .line 1508
    :cond_6
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_1
.end method

.method public getIntelligentWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 745
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 747
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 748
    const-string v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 747
    goto :goto_0

    :cond_1
    move v2, v3

    .line 748
    goto :goto_1
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    .prologue
    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning the last scanned time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1174
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1705
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_0

    .line 1722
    :goto_0
    return v7

    .line 1709
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1710
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1711
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1713
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1718
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1719
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in getNeverTurnonWiFiValue for Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1720
    goto :goto_0

    .line 1716
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v7, v10

    .line 1722
    goto :goto_0
.end method

.method public getStationID()I
    .locals 1

    .prologue
    .line 2181
    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public intelScanMode(Z)Z
    .locals 4
    .parameter "intelMode"

    .prologue
    const/4 v1, 0x0

    .line 890
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 892
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 907
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return v1

    .line 896
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ichecking if supplicant running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 898
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->pingSupplicant()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant is running and setting new scan interval values to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 900
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    .line 901
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p1}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v2

    if-nez v2, :cond_0

    .line 902
    const/4 v1, 0x1

    goto :goto_0

    .line 906
    :cond_2
    const-string v2, "Supplicant is not running; not able to set scan interval values"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1746
    if-nez p1, :cond_0

    .line 1747
    const/4 v0, 0x0

    .line 1748
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1794
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1795
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1796
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    const/4 v1, 0x1

    .line 1801
    .end local v0           #j:I
    :goto_1
    return v1

    .line 1795
    .restart local v0       #j:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1801
    .end local v0           #j:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDontUseWifiPressed()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 2

    .prologue
    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is intel scan mode enabled ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 914
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    return v0
.end method

.method public isMobileDataActive()I
    .locals 4

    .prologue
    .line 838
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 839
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 840
    const-string v2, "No Telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 841
    const/4 v0, 0x2

    .line 845
    :goto_0
    return v0

    .line 843
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 845
    .local v0, activity:I
    goto :goto_0
.end method

.method public isNotifyMeChecked()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 758
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 760
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 764
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 760
    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    const-string v4, "exception happened while checking NotifyMe"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 764
    goto :goto_0
.end method

.method public isUIDAvailable(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    .line 2057
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "data_usage"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2058
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2059
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2060
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2061
    const/4 v0, 0x0

    .line 2065
    :goto_0
    return v0

    .line 2064
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2065
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 1754
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 1758
    if-nez p1, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return v0

    .line 1761
    :cond_1
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 1764
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWifiSeamlessConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 884
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    .line 1209
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1210
    :try_start_0
    const-string v0, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1212
    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1213
    monitor-exit v1

    .line 1214
    return-void

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 2069
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2070
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_0
    return-void
.end method

.method protected requestStateChange()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1090
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 1091
    const-string v2, "No wifiManager."

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v2, v3

    .line 1107
    :goto_0
    return v2

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v1

    .line 1097
    .local v1, wifi_state:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1098
    const-string v2, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1101
    goto :goto_0

    .line 1103
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1104
    const-string v2, "WifiOffloadService"

    const-string v3, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    move-result v0

    :cond_3
    move v2, v0

    .line 1107
    goto :goto_0
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .locals 10
    .parameter "networkName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1030
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    .line 1031
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1033
    :cond_0
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1

    .line 1034
    const-string v5, "No wifiManager."

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v5, v6

    .line 1066
    :goto_0
    return v5

    .line 1039
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1040
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1041
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1043
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1044
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1045
    .local v4, ssid:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1048
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1049
    .local v3, netId:I
    const-string v5, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable network for SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1051
    const-string v5, "WifiOffloadService"

    const-string v8, "enableNetwork passed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1057
    const-string v5, "WifiOffloadService"

    const-string v6, "Connected "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 1058
    goto/16 :goto_0

    .line 1053
    :cond_3
    const-string v5, "WifiOffloadService"

    const-string v7, "failed enableNetwork"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1054
    goto/16 :goto_0

    .line 1060
    :cond_4
    const-string v5, "WifiOffloadService"

    const-string v7, "failed to connect"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1061
    goto/16 :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #netId:I
    .end local v4           #ssid:Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 1066
    goto/16 :goto_0
.end method

.method protected requestStateChange(Z)Z
    .locals 3
    .parameter "desiredState"

    .prologue
    .line 1071
    const/4 v0, 0x1

    .line 1073
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1077
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1078
    const/4 v1, 0x0

    .line 1081
    :goto_0
    return v1

    .line 1080
    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    .line 1081
    goto :goto_0
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .locals 11
    .parameter "stationID"

    .prologue
    .line 1559
    const-string v0, "requestWifiListForStationID()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning performed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1561
    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 1563
    const/4 v7, 0x0

    .line 1564
    .local v7, availableWiFi:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1566
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1571
    :goto_0
    if-eqz v9, :cond_2

    .line 1572
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    const/4 v8, 0x0

    .line 1574
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1576
    :cond_0
    const-string v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1577
    add-int/lit8 v8, v8, 0x1

    .line 1578
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    .end local v8           #count:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1582
    :cond_2
    return-object v7

    .line 1567
    :catch_0
    move-exception v10

    .line 1568
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentTestBaseStationID()V
    .locals 1

    .prologue
    .line 2118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2119
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 2120
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2121
    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetNeverTurnOnWifi() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1729
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    if-eqz v0, :cond_0

    .line 1730
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 1731
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 1732
    const-string v0, "Timer is reset"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1735
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1736
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1737
    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 2
    .parameter "value"
    .parameter "isDontShowChecked"

    .prologue
    .line 543
    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 544
    const-string v0, "notification came"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 547
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .locals 1
    .parameter "stationID"

    .prologue
    .line 2111
    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 2113
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2115
    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 0
    .parameter "isPressed"

    .prologue
    .line 874
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 875
    return-void
.end method

.method public setNeverTurnOnWifi()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1740
    const-string v0, "setNeverTurnOnWifi()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1741
    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1742
    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1743
    return-void
.end method

.method public setStationID(I)V
    .locals 0
    .parameter "stationID"

    .prologue
    .line 2175
    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 2176
    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiAuth"

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 2167
    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiBSSID"

    .prologue
    .line 2158
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 2159
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "wifiSSID"

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 2151
    return-void
.end method

.method public showAPDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1179
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    const-string v3, "Going to show AP dialog now"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1181
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v2, startDialogIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1183
    const-string v3, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1184
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1185
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, counter:I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #counter:I
    .local v1, counter:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 1188
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1189
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    goto :goto_0

    .line 1193
    .end local v0           #counter:I
    .end local v2           #startDialogIntent:Landroid/content/Intent;
    :cond_0
    return v6
.end method

.method public startBackKeyTimer()V
    .locals 4

    .prologue
    .line 1615
    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1616
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    .line 1617
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$11;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$11;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1628
    return-void
.end method

.method public startDataActivityTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 598
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 603
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 604
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 643
    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 646
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 670
    return-void
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 677
    const-string v1, "started Timer when user pressed Don\'t use WiFi"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 679
    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning:Z

    .line 680
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 681
    .local v0, baseStation:I
    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->dontUsePressTime:J

    .line 684
    const-string v1, "persist.offload.dontuse.time"

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 685
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer dealy -- >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    iget v3, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/WifiOffloadService;->timer_delay:J

    .line 687
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 688
    iput v5, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    iget v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/WifiOffloadService;->dont_use_counter:I

    goto :goto_0
.end method

.method public stopDataActivityTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 624
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 630
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public storeWiFiDetails()V
    .locals 5

    .prologue
    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeWiFiDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWifiBSSID() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1405
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1407
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v1

    .line 1415
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    const-string v3, "Exception in StoreWiFiDetais()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    const/4 v0, 0x1

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for data activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 729
    if-eqz p2, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .locals 7
    .parameter "ssid"
    .parameter "stationID"

    .prologue
    .line 2124
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2125
    .local v2, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :goto_0
    return-void

    .line 2128
    :catch_0
    move-exception v6

    .line 2129
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in test api updateBaseStationIDs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDialogStatus(I)V
    .locals 10
    .parameter "stationID"

    .prologue
    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDialogStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1650
    iput p1, p0, Lcom/android/server/WifiOffloadService;->prevStationID:I

    .line 1651
    const/4 v8, 0x1

    .line 1653
    .local v8, resetDialogCount:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1654
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1655
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1659
    const/4 v9, 0x0

    .line 1661
    .local v9, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1662
    if-lez v9, :cond_0

    .line 1663
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    return-void

    .line 1665
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1666
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1670
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1673
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1674
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateDialogStatus for dbHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNeverTurnOnWiFi(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 1680
    const-string v0, "updateNeverTurnOnWiFi to 1"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1681
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1682
    .local v2, cv:Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1684
    const/4 v8, 0x0

    .line 1686
    .local v8, rows:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1687
    if-lez v8, :cond_0

    .line 1688
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :goto_0
    return-void

    .line 1690
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1691
    .local v6, cvalues:Landroid/content/ContentValues;
    const-string v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1692
    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1698
    .end local v6           #cvalues:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 1699
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    const-string v1, "Exception in updateNeverTurnOnWiFi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiReallyOn()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Main function called "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 289
    iget v8, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v5

    .line 293
    .local v5, intel:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intel mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 295
    if-nez v5, :cond_0

    .line 296
    const-string v8, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    const/4 v8, 0x0

    .line 480
    :goto_0
    monitor-exit p0

    return v8

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 302
    const-string v8, "WiFi is already connected; return false"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 303
    const/4 v8, 0x0

    goto :goto_0

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 306
    :cond_2
    const-string v8, "Airplane plane OR hotspot return false"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 307
    const/4 v8, 0x0

    goto :goto_0

    .line 312
    :cond_3
    const/4 v1, 0x0

    .line 313
    .local v1, data_counter:I
    if-eqz p2, :cond_6

    move v2, v1

    .line 314
    .end local v1           #data_counter:I
    .local v2, data_counter:I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 317
    add-int/lit8 v1, v2, 0x1

    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    const/16 v8, 0x32

    if-le v2, v8, :cond_4

    .line 318
    const-string v8, "returning since data activity is going on for more than 10 Secs"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    const/4 v8, 0x0

    goto :goto_0

    .line 323
    :cond_4
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v1

    .line 326
    .end local v1           #data_counter:I
    .restart local v2       #data_counter:I
    goto :goto_1

    .line 324
    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    :catch_0
    move-exception v3

    .line 325
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "WifiOffloadService"

    const-string v9, "Unable to put worker thread to sleep"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 326
    .end local v1           #data_counter:I
    .restart local v2       #data_counter:I
    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    move v1, v2

    .line 330
    .end local v2           #data_counter:I
    .restart local v1       #data_counter:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v8

    iput v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    .line 333
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 334
    const-string v8, "isdontUseWifiTimerRuning is true dont offload"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 335
    const/4 v8, 0x0

    goto :goto_0

    .line 338
    :cond_7
    const/4 v7, 0x0

    .line 339
    .local v7, nowWaitForConnection:Z
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    if-nez v8, :cond_a

    .line 340
    :cond_8
    const-string v8, "WifiOffloadService"

    const-string v9, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez p2, :cond_9

    .line 343
    const-string v8, "Base Station is -1 but wifi is ON show the dialog"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->showAPDialog()Z

    .line 346
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 348
    :cond_a
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, networkList:[Ljava/lang/String;
    if-eqz v6, :cond_b

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    array-length v8, v6

    const/4 v9, 0x1

    if-gt v8, v9, :cond_10

    .line 351
    :cond_b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 353
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-nez v8, :cond_c

    .line 354
    const-string v8, "No networks and wifi is off so don\'t offload"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 355
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 359
    :cond_c
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    if-lez v8, :cond_e

    .line 360
    const-string v8, "Setting intel mode scan interval to TRUE"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 363
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    if-nez v8, :cond_d

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->intelScanMode(Z)Z

    .line 364
    :cond_d
    const-string v8, "Setting intel mode scan done "

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 366
    :cond_e
    if-eqz p2, :cond_f

    .line 367
    const-string v8, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 368
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 371
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNotifyMeChecked :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-nez v8, :cond_15

    .line 374
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 377
    :cond_10
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 379
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_15

    .line 380
    const-string v8, "requestStateChange : status true"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 381
    if-eqz p2, :cond_11

    .line 383
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 386
    :cond_11
    aget-object v8, v6, v4

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 387
    aget-object v8, v6, v4

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v7

    .line 379
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 389
    :cond_12
    const/4 v7, 0x0

    goto :goto_3

    .line 394
    .end local v4           #i:I
    :cond_13
    if-eqz p2, :cond_14

    .line 397
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 399
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 400
    const-string v8, "WifiOffloadService"

    const-string v9, "Connect WiFi seamlessly"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 402
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 403
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v7

    .line 440
    :cond_15
    :goto_4
    const/4 v0, 0x0

    .line 441
    .local v0, counter:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 443
    :cond_16
    :goto_5
    if-eqz v7, :cond_1d

    const/16 v8, 0x64

    if-ge v0, v8, :cond_1d

    .line 444
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v9, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v9, :cond_1c

    .line 445
    const-string v8, "Association completed"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 446
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 405
    .end local v0           #counter:I
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v8

    if-nez v8, :cond_18

    .line 406
    const-string v8, "Notify Me is unchecked, don\'t offload"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 407
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 409
    :cond_18
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 410
    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WifiOffloadService;->setAppRunOverWiFiResult(IZ)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->showAppRunningOverWifiDialog()V

    .line 413
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    :try_start_4
    const-string v8, "Waiting for user response"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 416
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    const-wide/32 v10, 0x927c0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 420
    :goto_6
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 421
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appRunOverWiFiResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 422
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    if-ne v8, v9, :cond_19

    .line 423
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 424
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v7

    goto :goto_4

    .line 417
    :catch_1
    move-exception v3

    .line 418
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v8, "WifiOffloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 420
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 287
    .end local v1           #data_counter:I
    .end local v5           #intel:Z
    .end local v6           #networkList:[Ljava/lang/String;
    .end local v7           #nowWaitForConnection:Z
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 425
    .restart local v1       #data_counter:I
    .restart local v5       #intel:Z
    .restart local v6       #networkList:[Ljava/lang/String;
    .restart local v7       #nowWaitForConnection:Z
    :cond_19
    :try_start_9
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    if-ne v8, v9, :cond_1a

    .line 426
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startDontUseWiFiPressedTimer()V

    .line 427
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 428
    :cond_1a
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    sget v9, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    if-ne v8, v9, :cond_1b

    .line 429
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 430
    :cond_1b
    iget v8, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_15

    .line 431
    const-string v8, " wifiOffloadFlow ---- TIMEOUT!!!:"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 432
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 447
    .restart local v0       #counter:I
    :cond_1c
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v8, :cond_1f

    .line 448
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 449
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v8, :cond_16

    .line 450
    const-string v8, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 463
    :cond_1d
    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v8, :cond_20

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 465
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 466
    const-string v8, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 467
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 470
    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 455
    :cond_1f
    const-wide/16 v8, 0xc8

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 459
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 456
    :catch_2
    move-exception v3

    .line 457
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v8, "WifiOffloadService"

    const-string v9, "Unable to put worker thread to sleep"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 473
    .end local v3           #e:Ljava/lang/Exception;
    :cond_20
    const-string v8, "enableNetwork API failed based on location, try to call standard API"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 475
    if-nez p2, :cond_21

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isWaitrequired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 477
    iget v8, p0, Lcom/android/server/WifiOffloadService;->baseStation:I

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->isdontUseWifiTimerRuning(I)Z

    move-result v8

    if-nez v8, :cond_21

    .line 478
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 480
    :cond_21
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
