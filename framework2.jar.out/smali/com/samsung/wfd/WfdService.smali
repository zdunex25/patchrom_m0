.class public Lcom/samsung/wfd/WfdService;
.super Lcom/samsung/wfd/IWfdManager$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine;,
        Lcom/samsung/wfd/WfdService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private final WFD_CHECK_TURN_OFF_INTERVAL:I

.field private final WFD_CHECK_TURN_OFF_MSG:I

.field private mAudioCnt:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mCurrentDimm:Ljava/lang/String;

.field private mCurrentResln:I

.field private mDongleUpdateResult:Z

.field private mDongleVer:Ljava/lang/String;

.field private mFrequencyAp:I

.field private mFrequencyWfd:I

.field private mHDMIConnected:Z

.field private mHDMITrigger:Z

.field private mInterface:Ljava/lang/String;

.field private mIsShowingNotification:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mRemoteIP:Ljava/lang/String;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRequestSessionControl:Ljava/lang/String;

.field private mResolutionBitMask:I

.field mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

.field private mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

.field private mScreenStatus:Z

.field private mSourceReslnBitMask:I

.field private mUpdateURL:Ljava/lang/String;

.field private mUseRTSPService:Z

.field private mWaitHotspotDone:Z

.field private mWfdEnabledFromPicker:Z

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private mWfdOffTimer:Z

.field private mWfdRestartOngoing:Z

.field private mWfdRestartTrigger:Z

.field private mWfdSourceConnection:Landroid/content/ServiceConnection;

.field mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

.field private final mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

.field private final mWfdSupported:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTrigger:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 249
    invoke-direct {p0}, Lcom/samsung/wfd/IWfdManager$Stub;-><init>()V

    .line 160
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 161
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 162
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    .line 164
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNwService:Landroid/os/INetworkManagementService;

    .line 167
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 168
    new-instance v1, Lcom/samsung/wfd/WfdService$1;

    invoke-direct {v1, p0}, Lcom/samsung/wfd/WfdService$1;-><init>(Lcom/samsung/wfd/WfdService;)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    .line 185
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 188
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 189
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 191
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 194
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 195
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 196
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 197
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    .line 198
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    .line 199
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    .line 200
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    .line 205
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    .line 210
    const/16 v1, 0x19

    iput v1, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    .line 212
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    .line 214
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    .line 216
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    .line 218
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 220
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 221
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 222
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 223
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 224
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 225
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 227
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 228
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 229
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 231
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    .line 232
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 234
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 235
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 236
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 238
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    .line 239
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    .line 240
    const/16 v1, 0x2bc

    iput v1, p0, Lcom/samsung/wfd/WfdService;->WFD_CHECK_TURN_OFF_MSG:I

    .line 241
    const v1, 0x493e0

    iput v1, p0, Lcom/samsung/wfd/WfdService;->WFD_CHECK_TURN_OFF_INTERVAL:I

    .line 242
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    .line 1985
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

    .line 1986
    new-instance v1, Lcom/samsung/wfd/WfdService$3;

    invoke-direct {v1, p0}, Lcom/samsung/wfd/WfdService$3;-><init>(Lcom/samsung/wfd/WfdService;)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    .line 250
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 252
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 254
    const-string v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    .line 260
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 261
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 262
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 263
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 264
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 266
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 267
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 268
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 269
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 270
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 271
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    .line 272
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    .line 275
    new-instance v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "WfdService"

    iget-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;-><init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 276
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->start()V

    .line 278
    new-instance v1, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v1}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 284
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 286
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 288
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 290
    const-string v1, "WfdService"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 297
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mAudioManager:Landroid/media/AudioManager;

    .line 298
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "WfdService"

    const-string v2, "mAudioManager is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct {v2, p0, v5}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 333
    return-void

    .line 294
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v1, "WfdService"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private WfdStartHDCPSuspend()V
    .locals 6

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->WFDGetSuspendStatus()Z

    move-result v0

    .line 1393
    .local v0, nRet:Z
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WFDGetSuspendStatus >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->WFDSetSuspendStatus(Z)Z

    move-result v0

    .line 1396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1397
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x1040564

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1398
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->WFDPostSuspend(Ljava/lang/String;)Z

    .line 1400
    return-void
.end method

.method private WfdStopHDCPSuspend()V
    .locals 3

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->WFDGetSuspendStatus()Z

    move-result v0

    .line 1407
    .local v0, nRet:Z
    if-eqz v0, :cond_0

    .line 1408
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->WFDSetSuspendStatus(Z)Z

    move-result v0

    .line 1409
    const-string v1, "WfdService"

    const-string v2, "done WfdStopHDCPSuspend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->setWfdState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->startWfdRoutine()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->sendToWfdPickerControlInfo(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->WfdStartHDCPSuspend()V

    return-void
.end method

.method static synthetic access$3202(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->WfdStopHDCPSuspend()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    return-object p1
.end method

.method private broadcastDongleVerToFota()V
    .locals 4

    .prologue
    .line 426
    const-string v2, "WfdService"

    const-string v3, "broadcastDongleVerToFota"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "com.samsung.wfd.START_WFD"

    .line 430
    .local v0, ACTION_START_WFD:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.START_WFD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 434
    const-string v2, "version"

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private broadcastIntent2HDMI(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 338
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_0

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 352
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 348
    :pswitch_0
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    iput-boolean v5, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 375
    :goto_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    if-eqz v1, :cond_1

    .line 359
    packed-switch p1, :pswitch_data_1

    .line 366
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :pswitch_1
    const-string v1, "state"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    goto :goto_1

    .line 370
    :cond_1
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI is not triggered! no send broadcastIntent2HDMI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 359
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastWfdSessionInfo()V
    .locals 4

    .prologue
    .line 443
    const-string v1, "WfdService"

    const-string v2, "broadcastWfdSessionInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_RES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, activityIntent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v1, "resBitMask"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v1, "curRes"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s:1 ResBit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ResIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method private broadcastWfdSessionState(I)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x800

    .line 383
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastWfdSessionState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    const-string v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v3, "resBitMask"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v3, "curRes"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 392
    const-string v3, "count"

    iget-object v4, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    :goto_0
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ResBit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ResIn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 400
    const-string v3, "WfdService"

    const-string v4, "broadcastWfdSessionInfo << to AllShare!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, mAllShareCastState:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    if-ne p1, v8, :cond_3

    .line 404
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    iget-object v4, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 415
    if-nez p1, :cond_1

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, intent_chage_transport_mode:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    const-string v3, "CONNECTION_MODE"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 422
    .end local v1           #intent_chage_transport_mode:Landroid/content/Intent;
    :cond_1
    return-void

    .line 394
    .end local v2           #mAllShareCastState:Landroid/content/Intent;
    :cond_2
    const-string v3, "count"

    const/16 v4, 0x780

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 410
    .restart local v2       #mAllShareCastState:Landroid/content/Intent;
    :cond_3
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1080
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 1085
    const-string v0, "WfdService"

    const-string v2, "isHotspotOn >> No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1101
    :goto_0
    return v0

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1097
    const-string v0, "WfdService"

    const-string v2, "Hotspot is Off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1101
    goto :goto_0

    .line 1093
    :pswitch_0
    const-string v0, "WfdService"

    const-string v1, "Hotspot is ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v0, 0x1

    goto :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSBeamOn()Z
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitWindow()Z
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method private sendToWfdPickerControlInfo(I)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 466
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToWfdPickerControlInfo << "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method private sendWfdBrokerStartForPopup(I)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    packed-switch p1, :pswitch_data_0

    .line 533
    :pswitch_0
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfdStartForPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return-void

    .line 483
    :pswitch_1
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_TERMINATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_1
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 487
    :pswitch_2
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_P2P_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 492
    :pswitch_3
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_CONNECTION_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    if-eqz v1, :cond_0

    .line 494
    const-string v1, "WfdService"

    const-string v2, "do not show disconnect popup when restart!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v2, 0x22068

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 502
    :pswitch_4
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 506
    :pswitch_5
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_RESTART"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    :pswitch_6
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_HDMI_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 514
    :pswitch_7
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_HOTSPOT_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    :pswitch_8
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_SBEAM_BUSY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    :pswitch_9
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_DONGLE_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v1, "url"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    goto :goto_1

    .line 528
    :pswitch_a
    const-string v1, "WfdService"

    const-string v2, "sendWfdStartForPopup << POPUP_CAUSE_SPLIT_WINDOW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 479
    :pswitch_data_0
    .packed-switch 0x22070
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private setHotspotOff()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 1110
    const-string v0, "WfdService"

    const-string v2, "setHotspotOff >> No wifiManager."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1117
    :goto_0
    return v0

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1115
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    move v0, v2

    .line 1117
    goto :goto_0
.end method

.method private setSBeamOff()Z
    .locals 1

    .prologue
    .line 1132
    const/4 v0, 0x1

    return v0
.end method

.method private setWfdState(I)V
    .locals 4
    .parameter "wfdState"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 457
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    const-string v1, "wfd_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private startWfdRoutine()V
    .locals 5

    .prologue
    .line 542
    const v0, 0xc000

    .line 544
    .local v0, lWfdPort:I
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settting ctrl port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_1

    .line 547
    :cond_0
    const-string v1, "WfdService"

    const-string v2, "startWfdRoutine failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "enable 1"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "dev_info 0110"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ctrl_port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "max_tput 40"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "cpled_sink_status 00"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .locals 2

    .prologue
    .line 1316
    const-string v0, "WfdService"

    const-string v1, "WFDGetSubtitleStatus :"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v0, 0x0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1350
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1352
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdSourceService;->WFDGetSuspendStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1360
    :cond_0
    :goto_0
    return v1

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 2
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_0

    .line 1339
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .locals 2
    .parameter "subtitle"

    .prologue
    .line 1380
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 5
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 1321
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSetSubtitleStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1324
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSubtitleStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .locals 5
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 1364
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSetSuspendStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1367
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSuspendStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WfdService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    :cond_0
    return-void
.end method

.method public getFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 4

    .prologue
    .line 2015
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteService:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;

    invoke-interface {v2}, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService;->GetFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2021
    :goto_0
    return-object v1

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WfdService"

    const-string v3, "getFrame exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1309
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1310
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 1

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1288
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public getWfdSinkResolution()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method public getWfdState()I
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isSessionEstablished()Z
    .locals 2

    .prologue
    .line 1300
    const-string v0, "wlan.wfd.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWiFiConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1064
    if-nez p1, :cond_0

    .line 1065
    const-string v2, "WfdService"

    const-string v3, "isWiFiConnected context is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v1, 0x0

    .line 1073
    :goto_0
    return v1

    .line 1069
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1071
    .local v0, manager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 1073
    .local v1, result:Z
    goto :goto_0
.end method

.method public setWfdEnabled(I)Z
    .locals 5
    .parameter "option"

    .prologue
    const v4, 0x2206f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1206
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1208
    packed-switch p1, :pswitch_data_0

    .line 1247
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1248
    :goto_0
    return v0

    .line 1211
    :pswitch_0
    const-string v1, "WfdService"

    const-string v2, "enforce to disconnect currrent p2p..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/samsung/wfd/WfdService$2;

    invoke-direct {v3, p0}, Lcom/samsung/wfd/WfdService$2;-><init>(Lcom/samsung/wfd/WfdService;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 1225
    :pswitch_1
    const-string v2, "WfdService"

    const-string v3, "enforce to disconnect currrent HDMI..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    .line 1227
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1231
    :pswitch_2
    const-string v0, "WfdService"

    const-string v2, "enforce to disconnect currrent hotspot..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setHotspotOff()Z

    move v0, v1

    .line 1235
    goto :goto_0

    .line 1238
    :pswitch_3
    const-string v1, "WfdService"

    const-string v2, "enforce to disconnect currrent sbeam..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setSBeamOff()Z

    goto :goto_0

    .line 1208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 1172
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1174
    if-eqz p1, :cond_6

    .line 1176
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_0

    .line 1177
    const v1, 0x22074

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    .line 1201
    :goto_0
    return v0

    .line 1179
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isHotspotOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    const v1, 0x22075

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1182
    :cond_1
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isSBeamOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    const v1, 0x22076

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-nez v1, :cond_3

    .line 1186
    const v1, 0x22072

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1188
    :cond_3
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isSplitWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1189
    const v1, 0x2207f

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1192
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-eqz v0, :cond_5

    .line 1193
    const-string v0, "WfdService"

    const-string v1, "already Wfd running..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1195
    :cond_5
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x2206f

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1200
    :cond_6
    const v1, 0x22070

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0
.end method

.method public setWfdRestart()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1258
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1259
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 1260
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1261
    return v2
.end method

.method public setWfdRestartOption(I)Z
    .locals 3
    .parameter "option"

    .prologue
    const/4 v2, 0x1

    .line 1265
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1266
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 1268
    packed-switch p1, :pswitch_data_0

    .line 1278
    :goto_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1279
    return v2

    .line 1271
    :pswitch_0
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    goto :goto_0

    .line 1268
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public setWfdTerminate()Z
    .locals 2

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1253
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1254
    const/4 v0, 0x1

    return v0
.end method

.method public startCapture(III)V
    .locals 4
    .parameter "frameType"
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 1998
    const-string v1, "WfdService"

    const-string v2, "startCapture!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ScreenCapture.ScreenCaptureRemoteService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "frameType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2001
    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2002
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2004
    return-void
.end method

.method public stopCapture()V
    .locals 2

    .prologue
    .line 2007
    const-string v0, "WfdService"

    const-string v1, "stopCapture!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mSCRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2009
    return-void
.end method
