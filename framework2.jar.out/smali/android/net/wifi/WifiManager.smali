.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$Channel;,
        Landroid/net/wifi/WifiManager$WpsListener;,
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_FRAME_VS_WES_RECEIVED_ACTION:Ljava/lang/String; = "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_SEC_NOTIFICATION_CANCEL:Ljava/lang/String; = "android.net.wifi.SEC_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CANCEL:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CONNECT:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CONNECT"

.field private static final BASE:I = 0x25000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DHCP_FAILURE_ERROR:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final ENABLE_TRAFFIC_STATS_POLL:I = 0x25015

.field public static final ERROR:I = 0x0

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_ACTION_FRAME_VS_WES_DATA:Ljava/lang/String; = "ActionFrameVSWESData"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final IN_PROGRESS:I = 0x1

.field public static final KIES_VIA_WIFI_RUN_KIES:Ljava/lang/String; = "android.net.wifi.RUN_KIES"

.field public static final KIES_VIA_WIFI_SET_HOME_AP:Ljava/lang/String; = "android.net.wifi.SET_HOME_AP"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SEC_COMMAND_ID_AUTO_CONNECT:I = 0x1

.field public static final SEC_COMMAND_ID_CMCC_MANUAL_CONNECTION:I = 0xf

.field public static final SEC_COMMAND_ID_CW_ENABLE_NETWORK:I = 0x6

.field public static final SEC_COMMAND_ID_CW_GET_STATE:I = 0xd

.field public static final SEC_COMMAND_ID_CW_GET_WIFI_SCREEN_ENABLE:I = 0x9

.field public static final SEC_COMMAND_ID_CW_HANDLE_DORMANCY:I = 0xc

.field public static final SEC_COMMAND_ID_CW_PERSIST_WIFI_ENABLED:I = 0xb

.field public static final SEC_COMMAND_ID_CW_SET_WIFI_ENABLED:I = 0x7

.field public static final SEC_COMMAND_ID_CW_SET_WIFI_SCREEN_ENABLE:I = 0x8

.field public static final SEC_COMMAND_ID_CW_WIFI_RETRY_REQUEST:I = 0xa

.field public static final SEC_COMMAND_ID_DNS_RECHECK:I = 0x19

.field public static final SEC_COMMAND_ID_GET_BAND:I = 0xa2

.field public static final SEC_COMMAND_ID_GET_CCX_MODE:I = 0xae

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_ENABLED:I = 0x14

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_MAXUSER:I = 0x16

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_TETHEREDDATA:I = 0x15

.field public static final SEC_COMMAND_ID_GET_COUNTRY_REV:I = 0xa0

.field public static final SEC_COMMAND_ID_GET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb4

.field public static final SEC_COMMAND_ID_GET_OKC_MODE:I = 0xac

.field public static final SEC_COMMAND_ID_GET_ROAM_DELTA:I = 0x66

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CHANNELS:I = 0x6c

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CONTROL:I = 0x6a

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_PERIOD:I = 0x68

.field public static final SEC_COMMAND_ID_GET_ROAM_TRIGGER:I = 0x64

.field public static final SEC_COMMAND_ID_GET_SCAN_CHANNEL_TIME:I = 0x82

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_AWAY_TIME:I = 0x86

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_TIME:I = 0x84

.field public static final SEC_COMMAND_ID_GET_SCAN_NPROBES:I = 0x88

.field public static final SEC_COMMAND_ID_GET_WES_MODE:I = 0xaa

.field public static final SEC_COMMAND_ID_GET_WIFIAP_STANUM:I = 0x3

.field public static final SEC_COMMAND_ID_INIT:I = 0x0

.field public static final SEC_COMMAND_ID_INIT_SCAN_INTERVAL:I = 0x2

.field public static final SEC_COMMAND_ID_READ_WHITELIST:I = 0x5

.field public static final SEC_COMMAND_ID_REASSOC:I = 0x97

.field public static final SEC_COMMAND_ID_SEND_ACTION_FRAME:I = 0x96

.field public static final SEC_COMMAND_ID_SET_AMPDU_MPDU:I = 0x11

.field public static final SEC_COMMAND_ID_SET_BAND:I = 0xa3

.field public static final SEC_COMMAND_ID_SET_CCX_MODE:I = 0xaf

.field public static final SEC_COMMAND_ID_SET_COUNTRY_REV:I = 0xa1

.field public static final SEC_COMMAND_ID_SET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb5

.field public static final SEC_COMMAND_ID_SET_IMS_RSSI_POLL_STATE:I = 0x18

.field public static final SEC_COMMAND_ID_SET_MINIMIZE_RETRY:I = 0x13

.field public static final SEC_COMMAND_ID_SET_OKC_MODE:I = 0xad

.field public static final SEC_COMMAND_ID_SET_ROAM_DELTA:I = 0x67

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CHANNELS:I = 0x6d

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CONTROL:I = 0x6b

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_PERIOD:I = 0x69

.field public static final SEC_COMMAND_ID_SET_ROAM_TRIGGER:I = 0x65

.field public static final SEC_COMMAND_ID_SET_SCAN_CHANNEL_TIME:I = 0x83

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_AWAY_TIME:I = 0x87

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_TIME:I = 0x85

.field public static final SEC_COMMAND_ID_SET_SCAN_NPROBES:I = 0x89

.field public static final SEC_COMMAND_ID_SET_WES_MODE:I = 0xab

.field public static final SEC_COMMAND_ID_SET_WIFIAP_DISASSOC_STA:I = 0x4

.field public static final SEC_COMMAND_ID_SET_WIFIAP_MAXCLIENT:I = 0xe

.field public static final SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P:I = 0x1a

.field public static final SEC_COMMAND_ID_SHOW_APLIST_EVENT:I = 0x10

.field public static final SEC_COMMAND_ID_STOP_PERIODIC_SCAN:I = 0x12

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SHOW_EAP_MESSAGE_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_EAP_MESSAGE"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field public static final SUPPLICANT_WAPI_EVENT:Ljava/lang/String; = "android.net.wifi.supplicant.WAPI_EVENT"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final TRAFFIC_STATS_POLL:I = 0x25016

.field public static final WAPI_EVENT_AUTH_FAIL_CODE:I = 0x10

.field public static final WAPI_EVENT_CERT_FAIL_CODE:I = 0x11

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_AP_STA_STATUS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 601
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 603
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 604
    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$308(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$310(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$320(Landroid/net/wifi/WifiManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 688
    :goto_0
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 7
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x4b

    const/16 v5, -0x53

    const/16 v4, -0x59

    .line 1010
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 1011
    if-gt p0, v4, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v2

    .line 1013
    :cond_1
    if-le p0, v4, :cond_2

    if-gt p0, v5, :cond_2

    .line 1014
    const/4 v2, 0x1

    goto :goto_0

    .line 1015
    :cond_2
    if-le p0, v5, :cond_3

    if-gt p0, v6, :cond_3

    .line 1016
    const/4 v2, 0x2

    goto :goto_0

    .line 1017
    :cond_3
    if-le p0, v6, :cond_4

    const/16 v2, -0x40

    if-gt p0, v2, :cond_4

    .line 1018
    const/4 v2, 0x3

    goto :goto_0

    .line 1020
    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    .line 1022
    :cond_5
    const/16 v3, -0x64

    if-le p0, v3, :cond_0

    .line 1024
    const/16 v2, -0x37

    if-lt p0, v2, :cond_6

    .line 1025
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 1027
    :cond_6
    const/high16 v0, 0x4234

    .line 1028
    .local v0, inputRange:F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 1029
    .local v1, outputRange:F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 1044
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 647
    if-nez p1, :cond_0

    .line 651
    :goto_0
    return v0

    .line 650
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 651
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1195
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    const/4 v1, 0x1

    .line 1198
    :goto_0
    return v1

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public callSECApi(Landroid/os/Message;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 1908
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1910
    :goto_0
    return v1

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 1917
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1919
    :goto_0
    return-object v1

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 1644
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1646
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1647
    return-void
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 1212
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    const/4 v1, 0x1

    .line 1215
    :goto_0
    return v1

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 8
    .parameter "c"
    .parameter "networkId"
    .parameter "listener"

    .prologue
    .line 1522
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Channel needs to be initialized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1523
    :cond_0
    if-gez p2, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Network id cannot be negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1527
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1528
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, 0x0

    .line 1529
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 1530
    .local v4, wifi:Landroid/net/wifi/WifiConfiguration;
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p2, :cond_2

    .line 1531
    move-object v0, v4

    .line 1535
    .end local v4           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1536
    .local v1, edmArgs:Landroid/os/Bundle;
    const-string v5, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1537
    const-string v5, "config"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1538
    iget-object v5, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v6, 0x25001

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v6, p2, v7, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1542
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 5
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1489
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Channel needs to be initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1490
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "config cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1495
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1496
    .local v0, edmArgs:Landroid/os/Bundle;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1497
    const-string v1, "config"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1498
    iget-object v1, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x25001

    const/4 v3, -0x1

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1507
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 2165
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 2131
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "tag"

    .prologue
    .line 2147
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "c"
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1615
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1619
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 737
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 739
    :goto_0
    return v1

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 3

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V

    .line 751
    sget-boolean v1, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    const/4 v1, 0x1

    .line 754
    :goto_0
    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 724
    :goto_0
    return v1

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1591
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Channel needs to be initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1592
    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Network id cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1597
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1598
    .local v0, edmArgs:Landroid/os/Bundle;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1599
    iget-object v1, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x25004

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1604
    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1687
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1689
    :goto_0
    return-object v1

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 628
    :goto_0
    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 843
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 845
    :goto_0
    return-object v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1831
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCountryRev()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1833
    :goto_0
    return-object v1

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 945
    :goto_0
    return-object v1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 919
    :goto_0
    return v1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFullRoamScanPeriod()I
    .locals 2

    .prologue
    .line 1784
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFullRoamScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1786
    :goto_0
    return v1

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamBand()I
    .locals 2

    .prologue
    .line 1808
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1810
    :goto_0
    return v1

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamDelta()I
    .locals 2

    .prologue
    .line 1736
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1738
    :goto_0
    return v1

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamScanPeriod()I
    .locals 2

    .prologue
    .line 1760
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1762
    :goto_0
    return v1

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamTrigger()I
    .locals 2

    .prologue
    .line 1712
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1714
    :goto_0
    return v1

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 857
    :goto_0
    return-object v1

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApChameleonSsid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1138
    :goto_0
    return-object v1

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1104
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1128
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApStaList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1130
    :goto_0
    return-object v1

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1081
    :goto_0
    return v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1660
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1662
    :goto_0
    return-object v1

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 984
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 986
    :goto_0
    return v1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1673
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1675
    :goto_0
    return-object v1

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 1462
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 1463
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 1470
    :cond_0
    :goto_0
    return-object v0

    .line 1465
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiManager$Channel;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/WifiManager$Channel;-><init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)V

    .line 1466
    .local v0, c:Landroid/net/wifi/WifiManager$Channel;
    iget-object v3, v0, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Landroid/net/wifi/WifiManager$Channel;->mHandler:Landroid/net/wifi/WifiManager$Channel$WifiHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1470
    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 2356
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    const/4 v1, 0x1

    .line 2359
    :goto_0
    return v1

    .line 2358
    :catch_0
    move-exception v0

    .line 2359
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 932
    :goto_0
    return v1

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMiWifi()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    const-string v1, "XIAOMI_ROUTER"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getVendorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2344
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2346
    :goto_0
    return v1

    .line 2345
    :catch_0
    move-exception v0

    .line 2346
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 799
    :goto_0
    return v1

    .line 797
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    const/4 v1, 0x1

    .line 784
    :goto_0
    return v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 766
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    const/4 v1, 0x1

    .line 769
    :goto_0
    return v1

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 702
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 704
    :goto_0
    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 5
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1562
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Channel needs to be initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1563
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "config cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1568
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1569
    .local v0, edmArgs:Landroid/os/Bundle;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1570
    const-string v1, "config"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1571
    iget-object v1, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x25007

    const/4 v3, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1576
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 874
    :goto_0
    return v1

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 1
    .parameter "country"
    .parameter "persist"

    .prologue
    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 2
    .parameter "countryRev"

    .prologue
    .line 1820
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCountryRev(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1822
    :goto_0
    return v1

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 2
    .parameter "fullRoamScanPeriod"

    .prologue
    .line 1772
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setFullRoamScanPeriod(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1774
    :goto_0
    return v1

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamBand(I)Z
    .locals 2
    .parameter "roamBand"

    .prologue
    .line 1796
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1798
    :goto_0
    return v1

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamDelta(I)Z
    .locals 2
    .parameter "roamDelta"

    .prologue
    .line 1724
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1726
    :goto_0
    return v1

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 2
    .parameter "roamScanPeriod"

    .prologue
    .line 1748
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1750
    :goto_0
    return v1

    .line 1749
    :catch_0
    move-exception v0

    .line 1750
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamTrigger(I)Z
    .locals 2
    .parameter "roamTrigger"

    .prologue
    .line 1700
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1702
    :goto_0
    return v1

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1118
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    const/4 v1, 0x1

    .line 1121
    :goto_0
    return v1

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1061
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    const/4 v1, 0x1

    .line 1064
    :goto_0
    return v1

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 958
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget-boolean v1, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 963
    :goto_0
    return v1

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v2, "RemoteException occured. WifiManager.setWifiEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdown()Z
    .locals 2

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->shutdown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 971
    :goto_0
    return v1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 811
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    const/4 v1, 0x1

    .line 814
    :goto_0
    return v1

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startScanActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 830
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    return v1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 2

    .prologue
    .line 1158
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    const/4 v1, 0x1

    .line 1161
    :goto_0
    return v1

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V
    .locals 4
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1630
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1634
    return-void
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    .line 1178
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    const/4 v1, 0x1

    .line 1181
    :goto_0
    return v1

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 670
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 671
    :cond_0
    const/4 v0, -0x1

    .line 673
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method
