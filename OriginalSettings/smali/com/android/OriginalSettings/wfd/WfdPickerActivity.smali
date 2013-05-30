.class public Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mConnectingDialogCalled:Z

.field private mControlByWfdService:I

.field mController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mEndConnection:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private mWifiP2pEnabled:Z

.field private final wfdStateArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 92
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 104
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 116
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 118
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 119
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 120
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 127
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 139
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 147
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 148
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 150
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 152
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 155
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnection:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 166
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 168
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 169
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 177
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 178
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 184
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 185
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 189
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 191
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 192
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 194
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 196
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 198
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 199
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 200
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 202
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 203
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 207
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 210
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 214
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 216
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 217
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 219
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 490
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEndConnection:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3110(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 721
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 1833
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1835
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1839
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1842
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1843
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1844
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1846
    :cond_2
    return-void
.end method

.method private autoConnecting()V
    .locals 4

    .prologue
    .line 2108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 2110
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2128
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2129
    return-void
.end method

.method private cancelWfdConnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1616
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1621
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1626
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1646
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1648
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_0

    .line 1651
    :cond_2
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1662
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1664
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1666
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1667
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1668
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 1669
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToScan()V

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 1188
    const-string v0, "WfdPickerActivity"

    const-string v1, "changeActionBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1193
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1199
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 1733
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1736
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1739
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is found in the list device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1351
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1355
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1357
    :cond_1
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1340
    :cond_1
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1485
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 1489
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1490
    const v0, 0x7f0400f0

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1491
    const v0, 0x7f0b02b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1492
    const v3, 0x7f09039d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1493
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1495
    const v0, 0x7f0400ea

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1497
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1500
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1502
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1504
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1506
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;

    iget-wide v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 1519
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1521
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_0

    .line 1522
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1523
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1547
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905b9

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1567
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 1425
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 1427
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1429
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a0

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1437
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905b8

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1457
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1432
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1374
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 1377
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1379
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09039f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905b8

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1411
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905b9

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1420
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private displayConnectionFailed()V
    .locals 2

    .prologue
    .line 1469
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1473
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    .line 1475
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1476
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1477
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1481
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1482
    return-void
.end method

.method private finishScanDevice(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2005
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishScanDevice << result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2009
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2010
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2042
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2049
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2051
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 2052
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToScan()V

    .line 2057
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2058
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2016
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2021
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc dev info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2023
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto :goto_1

    .line 2028
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0

    .line 2037
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2062
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 2067
    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2069
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2071
    :cond_5
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2077
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_0

    .line 2014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 4

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1677
    const-string v1, "wlan.wfd.lastdevicename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1679
    const-string v2, "wlan.wfd.lastdeviceaddr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1682
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1683
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1686
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1687
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1690
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1363
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1364
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting by nfc dev addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1369
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 682
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 684
    if-eqz v0, :cond_1

    .line 685
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    :cond_0
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 693
    :cond_1
    :goto_0
    return-void

    .line 688
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_0
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1317
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1321
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1327
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1329
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1331
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1332
    return-void
.end method

.method private initMemberVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 586
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 589
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 593
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 595
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 596
    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 597
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 600
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 601
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 605
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 606
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 659
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 661
    const-string v0, "allsharecast_available"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 662
    const-string v0, "allsharecast_connected"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 663
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 665
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 668
    const-string v0, "allsharecast_switch"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 670
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 673
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 674
    return-void
.end method

.method private isNotNfcEntry()Z
    .locals 4

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 613
    .local v1, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 614
    const/4 v2, 0x0

    .line 616
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2187
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2190
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 2191
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v0, 0x1

    .line 2201
    :goto_0
    return v0

    .line 2194
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2195
    goto :goto_0

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2201
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2206
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2209
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2212
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    const/4 v0, 0x1

    .line 2223
    :goto_0
    return v0

    .line 2216
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2217
    goto :goto_0

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2223
    goto :goto_0
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 2151
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2153
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const/4 v0, 0x1

    .line 2157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2132
    .line 2134
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    if-eqz v2, :cond_1

    .line 2135
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    and-int/2addr v2, v0

    .line 2137
    if-ne v2, v0, :cond_0

    .line 2147
    :goto_0
    return v0

    .line 2140
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> this peer wasn\'t setted sink flag !"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2142
    goto :goto_0

    .line 2146
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> wfdDevInfo is 0 !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2147
    goto :goto_0
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1577
    const-string v0, "WfdPickerActivity"

    const-string v1, "makeConnConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1581
    if-nez p1, :cond_0

    .line 1582
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to connect with last connected info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1588
    const-string v0, "WfdPickerActivity"

    const-string v1, "we do not have mP2pDevice...so set use default WpsInfo info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1591
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1592
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1593
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1611
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0

    .line 1595
    :cond_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1600
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1602
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1603
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1604
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1605
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1607
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private printWfdSettingState()V
    .locals 3

    .prologue
    .line 1744
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 1745
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1751
    :goto_0
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    .line 1748
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown! curr WFDState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1721
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1723
    const-string v1, "wlan.wfd.lastdevicename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1724
    const-string v1, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1728
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    return-void
.end method

.method private retrieveServiceManagers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 622
    const-string v1, "WfdPickerActivity"

    const-string v2, "Retrieving Service Managers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v1, "WfdPickerActivity"

    const-string v2, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v1, "wifip2p"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 627
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 628
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 631
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 632
    const-string v1, "WfdPickerActivity"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sput-object v5, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 640
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 642
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, option:I
    packed-switch v0, :pswitch_data_0

    .line 651
    :goto_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 656
    :cond_1
    return-void

    .line 637
    .end local v0           #option:I
    :cond_2
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .restart local v0       #option:I
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_1

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    .line 1926
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v2, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1933
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1935
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1937
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1940
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1941
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f090363

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1942
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1944
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1946
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1947
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1948
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1951
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1952
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1954
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1955
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 1956
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1959
    :cond_3
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 1969
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1972
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1974
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1975
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1989
    :cond_4
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private setAllShareCastSwitch()V
    .locals 11

    .prologue
    const/16 v6, 0x10

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 762
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 764
    instance-of v4, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 765
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 766
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 768
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 771
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v1, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 772
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 775
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 783
    .end local v1           #padding:I
    :cond_1
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 784
    new-instance v4, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v4, v0, v5, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 785
    iput-boolean v10, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 793
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 794
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 795
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 797
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 798
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 800
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v5, 0x7f090363

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 801
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v4, v10}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 802
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 808
    .end local v3           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_4

    .line 809
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 810
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    :cond_4
    return-void

    .line 787
    .restart local v2       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_5
    new-instance v4, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v5, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 788
    iput-boolean v8, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_0

    .line 804
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_6
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v4, :cond_3

    .line 805
    const v4, 0x7f0903a4

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    goto :goto_1
.end method

.method private setCastMenu(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 1849
    const-string v0, "WfdPickerActivity"

    const-string v2, "setCastMenu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 1852
    :goto_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v2, :cond_1

    .line 1854
    if-eqz v0, :cond_3

    .line 1855
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v3, 0x7f02021f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1856
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1864
    :cond_0
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1923
    :cond_1
    :goto_2
    :pswitch_0
    return-void

    .line 1851
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1858
    :cond_3
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 1859
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1860
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1869
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 1871
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f020084

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1872
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1880
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1881
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f090371

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1883
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_2

    .line 1876
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1877
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1887
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 1889
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f020086

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1890
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1898
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1899
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0905f3

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1901
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 1903
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_2

    .line 1894
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1895
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1907
    :pswitch_3
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_ENDCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_8

    if-eqz v0, :cond_9

    .line 1909
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f020080

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1910
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1915
    :goto_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1916
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f090372

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1912
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1913
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1696
    if-nez p1, :cond_1

    .line 1697
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1700
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1715
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void

    .line 1702
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1704
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1708
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1710
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter

    .prologue
    .line 2090
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2092
    iget-object v0, p1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2094
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2095
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_1

    .line 2096
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2098
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private stopConnectingCountDown()V
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1574
    :cond_0
    return-void
.end method

.method private terminateWfdActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 914
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 917
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 919
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 925
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 926
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_0

    .line 946
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 952
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 953
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 954
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 956
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 960
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 962
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .locals 2

    .prologue
    .line 516
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 518
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 697
    const/4 v3, 0x0

    .line 699
    .local v3, msgs:[Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 700
    .local v4, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    .line 701
    array-length v6, v4

    new-array v3, v6, [Landroid/nfc/NdefMessage;

    .line 702
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 703
    aget-object v6, v4, v1

    check-cast v6, Landroid/nfc/NdefMessage;

    aput-object v6, v3, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v1           #i:I
    :cond_0
    new-array v0, v7, [B

    .line 708
    .local v0, empty:[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 709
    .local v5, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v5, v6, v7

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 712
    .local v2, msg:Landroid/nfc/NdefMessage;
    new-array v3, v8, [Landroid/nfc/NdefMessage;

    .end local v3           #msgs:[Landroid/nfc/NdefMessage;
    aput-object v2, v3, v7

    .line 717
    .end local v0           #empty:[B
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v5           #record:Landroid/nfc/NdefRecord;
    .restart local v3       #msgs:[Landroid/nfc/NdefMessage;
    :cond_1
    return-object v3
.end method

.method handleP2pStateChanged(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1756
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged, forceRemove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1758
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 1759
    const-string v1, "WfdPickerActivity"

    const-string v2, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1762
    const-string v0, "WfdPickerActivity"

    const-string v1, "bad state! skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1766
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1768
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1770
    iput v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1772
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1773
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1774
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v2, 0x7f090363

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1775
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1777
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 1778
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1779
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1782
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1784
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v0, :cond_3

    .line 1785
    const-string v0, "WfdPickerActivity"

    const-string v1, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1789
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 1793
    :cond_4
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1794
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 1802
    :cond_5
    const-string v1, "WfdPickerActivity"

    const-string v2, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 1805
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1807
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_6

    .line 1808
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1809
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1812
    :cond_6
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1814
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1815
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1817
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_7

    .line 1818
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1820
    :cond_7
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1823
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1824
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1827
    const v0, 0x7f0903a4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    goto/16 :goto_0
.end method

.method isWfdConnected()Z
    .locals 3

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2164
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2179
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2169
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const/4 v0, 0x1

    goto :goto_1

    .line 2173
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2165
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 754
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 757
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 758
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1166
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->changeActionBar()V

    .line 1170
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1175
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1178
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1179
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1183
    :cond_2
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 546
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 551
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 554
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    :cond_0
    if-nez v1, :cond_1

    .line 569
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 583
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 576
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 578
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 580
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initUI()V

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1120
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1125
    packed-switch p1, :pswitch_data_0

    .line 1140
    const/4 v0, 0x0

    .line 1160
    :goto_0
    return-object v0

    .line 1127
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1143
    :goto_1
    if-eqz v0, :cond_0

    .line 1144
    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1159
    :cond_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1130
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1134
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1125
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f020083

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 969
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    move v0, v1

    .line 971
    :goto_0
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_1

    .line 973
    const v3, 0x7f090371

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 977
    const v3, 0x7f090372

    invoke-interface {p1, v2, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 981
    const/4 v3, 0x3

    const v4, 0x7f090376

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 985
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 992
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 993
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 994
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1002
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_3

    .line 1003
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f02021f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1010
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1027
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1028
    return-void

    :cond_2
    move v0, v2

    .line 969
    goto/16 :goto_0

    .line 996
    :catch_0
    move-exception v3

    .line 997
    const-string v4, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1012
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1013
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1016
    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1018
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f02021f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1019
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 737
    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const v1, 0x7f040109

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 740
    const v1, 0x7f0b02ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 741
    const v1, 0x7f0b0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 743
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f020215

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 744
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f090ccf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 745
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0903a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 747
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 888
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDetach()V

    .line 896
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-eqz v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 900
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 910
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1045
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1100
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1047
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090371

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    :cond_0
    :goto_1
    move v0, v7

    .line 1063
    goto :goto_0

    .line 1056
    :cond_1
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1057
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1059
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1061
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_1

    .line 1068
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 1069
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903b5

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1081
    :goto_2
    if-eqz v2, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1083
    const-string v0, "called_by_settings"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1086
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    move v0, v7

    .line 1089
    goto :goto_0

    .line 1072
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1085
    :cond_4
    const-string v0, "called_by_settings"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1092
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1095
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_5
    move v0, v7

    .line 1097
    goto/16 :goto_0

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 836
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 839
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 842
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 845
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 848
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_2

    .line 852
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->pause()V

    .line 854
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 856
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 857
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 860
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 861
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 867
    :cond_4
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v1, :cond_5

    .line 868
    const-string v1, "WfdPickerActivity"

    const-string v2, "Dialog finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 872
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 873
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_6

    .line 874
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 875
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause requestP2pListen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1207
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1210
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v0, v4, :cond_2

    .line 1213
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1220
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1222
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1223
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1225
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1227
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v3, 0x7f090363

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1228
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1230
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1231
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1233
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1236
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 1237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1239
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1240
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1242
    const-string v1, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Address - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " peer.wfdDevInfo - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1247
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    new-instance v5, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1250
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1256
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1257
    if-eqz v3, :cond_5

    .line 1258
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1264
    :goto_2
    if-eqz v1, :cond_6

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v6, :cond_6

    .line 1265
    const-string v6, "WfdPickerActivity"

    const-string v7, "connect by nfc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0, v0, v5, v3, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1260
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 1261
    :goto_3
    const-string v6, "WfdPickerActivity"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 1269
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1271
    const-string v1, "WfdPickerActivity"

    const-string v3, "connectLastConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-direct {p0, v0, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_1

    .line 1280
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1283
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1287
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceList item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >> peer.status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_8

    .line 1291
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1294
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 1296
    iput v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1297
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1299
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto/16 :goto_4

    .line 1301
    :cond_9
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1310
    :cond_a
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 1311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1260
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1106
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bStartConnectingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v0, :cond_0

    .line 1109
    instance-of v0, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1110
    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 1111
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1112
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1032
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 1034
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1035
    .local v0, searchMenu:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_1

    .line 1036
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1041
    .end local v0           #searchMenu:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 1038
    .restart local v0       #searchMenu:Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 817
    const-string v0, "WfdPickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 819
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 821
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 823
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 825
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->resume()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 832
    :cond_1
    return-void
.end method

.method public setAutoConnStarted()V
    .locals 1

    .prologue
    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1462
    return-void
.end method

.method setWfdEnabled()V
    .locals 2

    .prologue
    .line 534
    const-string v0, "WfdPickerActivity"

    const-string v1, "setWfdEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "wfd"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 536
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "WfdPickerActivity"

    const-string v1, "AllShare Cast is turned on..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogp(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1465
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1466
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 526
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    .line 530
    :cond_0
    return-void
.end method

.method stopScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 521
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 523
    return-void
.end method
