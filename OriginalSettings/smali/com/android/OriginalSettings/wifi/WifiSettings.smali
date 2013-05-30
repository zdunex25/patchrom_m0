.class public Lcom/android/OriginalSettings/wifi/WifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAutoFinishOnConnection:Z

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupFlag:Z

.field private mRetryPopupRequestId:I

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

.field private mScrollTimer:J

.field private mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWatchdogDialogRunnable:Ljava/lang/Runnable;

.field private mWifiDialogStyle:I

.field private mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 230
    const v0, 0x493e0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 264
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 273
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 278
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 294
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 300
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2131
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$18;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$18;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2169
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$19;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiNewDialog;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1667
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1677
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2126
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2129
    :cond_0
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2424
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    .line 2426
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2427
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2417
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    .line 2419
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2420
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    .line 1686
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1687
    if-eqz v0, :cond_0

    .line 1691
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1692
    new-instance v2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1693
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1694
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    iget-object v0, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_3

    .line 1704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1706
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1711
    const/4 v1, 0x0

    .line 1712
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1713
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1714
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 1716
    :cond_2
    if-nez v2, :cond_1

    .line 1717
    new-instance v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1718
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    iget-object v0, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1726
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    :goto_4
    return-object v3

    .line 1727
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1172
    packed-switch p1, :pswitch_data_0

    .line 1204
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1174
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1176
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1180
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1181
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1182
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1186
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1188
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1192
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1194
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    goto :goto_0

    .line 1198
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1200
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1381
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1383
    const v1, 0x7f040106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1384
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1385
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    const v0, 0x7f0b0329

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1387
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1388
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$17;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$17;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1395
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 2443
    const/4 v1, 0x0

    .line 2444
    .local v1, found:Z
    const/4 v3, -0x1

    .line 2445
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 2446
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2447
    const/4 v1, 0x1

    .line 2448
    iget v3, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 2452
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 2455
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x7530

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1755
    const-string v0, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1756
    const-string v0, "wapi_string"

    .line 1758
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1759
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    packed-switch v0, :pswitch_data_0

    .line 1870
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1871
    const-string v0, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1872
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    if-nez v0, :cond_e

    .line 1904
    :cond_1
    :goto_1
    return-void

    .line 1762
    :pswitch_0
    const v0, 0x7f09021d

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1766
    :pswitch_1
    const v0, 0x7f09021e

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1770
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1771
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 1773
    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1774
    const-string v0, "WifiSettings"

    const-string v2, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1783
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1784
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 1785
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1786
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v2, "Force scan for 5G APs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1788
    :cond_4
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1789
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1791
    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1792
    if-eqz v0, :cond_5

    .line 1793
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 1794
    :cond_5
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1795
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 1796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1799
    :cond_6
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1800
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 1801
    :cond_7
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1808
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 1810
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1811
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1813
    :cond_8
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1814
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1816
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1817
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 1818
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 1820
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1821
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1822
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1823
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1831
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 1835
    :cond_a
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1837
    :cond_b
    const-string v0, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1838
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1839
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1840
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 1842
    :cond_c
    const-string v0, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1843
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1844
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1847
    :pswitch_2
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1848
    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1849
    invoke-direct {p0, v8, v9, v6}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 1852
    :cond_d
    const-string v0, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1854
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 1858
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1859
    const-string v0, "visible"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    invoke-direct {p0, v7, v9, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 1879
    :cond_e
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1880
    const-string v1, "Succeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1881
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1894
    :cond_f
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setAuthenticationInformationn(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1901
    :cond_10
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1882
    :cond_11
    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1883
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1884
    :cond_12
    const-string v1, "InvalidValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1885
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1886
    :cond_13
    const-string v1, "InvalidPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1887
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1888
    :cond_14
    const-string v1, "InvalidCertificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1889
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1890
    :cond_15
    const-string v1, "NoResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1891
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1760
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1845
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 1855
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method private isUsimUseable(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2493
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2494
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 2495
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 2497
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 2498
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09027f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 2518
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 2495
    goto :goto_0

    .line 2502
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "SKT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2503
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2505
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2506
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090281

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 2507
    goto :goto_1

    .line 2509
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "KTT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2510
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2512
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2513
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090280

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 2514
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2518
    goto :goto_1
.end method

.method private onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090232

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1374
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1376
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1378
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1448
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1450
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1451
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 1452
    const/4 v0, 0x1

    .line 1454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2437
    const/4 v0, 0x1

    return v0
.end method

.method private setAuthenticationInformationn(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1909
    :try_start_0
    const-string v0, "/data/misc/wifi/message.txt"

    .line 1911
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1916
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 1921
    return-void

    .line 1916
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 1649
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 1650
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f02033a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1653
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1658
    :cond_0
    return-void
.end method

.method private showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1125
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 1127
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1968
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    if-nez p1, :cond_2

    .line 1971
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1973
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 1975
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1976
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f09039b

    invoke-virtual {v0, v3, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1977
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1978
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 1979
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 1980
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1982
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1983
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 1988
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_5

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 1989
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1990
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgressText(ZI)V

    .line 1992
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1999
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2000
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Dialog is aleady showing. Ignore request id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2013
    return-void

    .line 2006
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09071e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2008
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showRetryDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1145
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 1153
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1154
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1156
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 1157
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f09033f

    const v5, 0x1040014

    const/high16 v4, 0x104

    const v3, 0x1010355

    const/4 v2, 0x0

    .line 1254
    iput-boolean p3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1255
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1258
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1369
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1261
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1263
    const v1, 0x7f020350

    const v2, 0x7f090335

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1264
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1265
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1266
    const v1, 0x7f090336

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1276
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$8;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1285
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$9;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 1291
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$10;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1301
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$11;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    .line 1308
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1309
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1315
    :pswitch_2
    const-string v0, ""

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09026f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1317
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1318
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1319
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 1325
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1326
    const v1, 0x7f02034f

    const v2, 0x7f090270

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1327
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1328
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1329
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$12;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$12;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1338
    const v1, 0x7f09056a

    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$13;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1347
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$14;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$14;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1352
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$15;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$15;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1357
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$16;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1364
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1365
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1404
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    .line 1405
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragment;

    move-result-object v6

    .line 1417
    .local v6, guide:Lcom/android/OriginalSettings/guide/GuideFragment;
    if-eqz v6, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1419
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1424
    .end local v6           #guide:Lcom/android/OriginalSettings/guide/GuideFragment;
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->show()V

    .line 1425
    return-void
.end method

.method private showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->dismiss()V

    .line 1431
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    .line 1432
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1433
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->show()V

    .line 1435
    return-void
.end method

.method private showRetryDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x5

    .line 1161
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1164
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1165
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1167
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 1168
    return-void
.end method

.method private startWith(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 715
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    packed-switch p1, :pswitch_data_0

    .line 735
    :goto_0
    return-void

    .line 718
    :pswitch_0
    const/4 v2, 0x4

    const/16 v3, 0x7530

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 722
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 723
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$6;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 728
    .local v1, runnable:Ljava/lang/Runnable;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 732
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1463
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1466
    const-string v1, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAccessPoints] wifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    packed-switch v0, :pswitch_data_0

    .line 1616
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1617
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 1618
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_3
    iput-wide v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 1470
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1472
    :cond_5
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1476
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v4

    .line 1477
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1487
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1488
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v1, :cond_e

    .line 1489
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1490
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1496
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1497
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    move-object v1, v0

    .line 1499
    :goto_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    .line 1559
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1561
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1562
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1563
    :goto_3
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1565
    const v0, 0x7f090237

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1567
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1581
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1562
    goto :goto_3

    .line 1585
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1593
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1594
    :goto_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1596
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 1593
    goto :goto_5

    .line 1603
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 1607
    :pswitch_2
    const v0, 0x7f090219

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1612
    :pswitch_3
    const v0, 0x7f090236

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1620
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1621
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_e
    move-object v1, v0

    goto/16 :goto_2

    .line 1468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 1926
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1927
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1965
    :cond_0
    return-void

    .line 1931
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1932
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v4, :cond_2

    .line 1933
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 1935
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1939
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v4, :cond_6

    .line 1940
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1945
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1946
    if-eqz p1, :cond_4

    .line 1947
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1950
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 1952
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 1953
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 1954
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1955
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1957
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupFlag:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mRetryPopupRequestId:I

    iget v5, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_5

    .line 1961
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConnectionFailDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;)V

    .line 1950
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1942
    .end local v1           #i:I
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 830
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 831
    if-eqz p1, :cond_2

    .line 832
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 833
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 839
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 840
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 841
    if-eqz p1, :cond_3

    .line 842
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 843
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 860
    :cond_1
    :goto_1
    return-void

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 836
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 845
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 846
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 851
    if-eqz p1, :cond_5

    .line 852
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 853
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 856
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2016
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2018
    packed-switch p1, :pswitch_data_0

    .line 2047
    :goto_0
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2048
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2049
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2050
    :goto_1
    return-void

    .line 2020
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2025
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2027
    const v0, 0x7f090218

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2031
    :pswitch_2
    const v0, 0x7f090236

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2033
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 2036
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2038
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2040
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 4

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2471
    const-string v0, "WifiSettings"

    const-string v1, "Failed to forget invalid network "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    :goto_0
    return-void

    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2482
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2485
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 404
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 405
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 407
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 419
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 431
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 443
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 445
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 446
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 450
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 451
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 465
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 468
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 469
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 472
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 474
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 482
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 484
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 608
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 491
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 496
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 500
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 501
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 503
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 509
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_b

    .line 510
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v7, 0x1

    sput v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 512
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/OriginalSettings/wifi/WifiSettings;->manageNetwork:Z

    .line 513
    const v7, 0x7f070071

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 514
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 515
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v7, :cond_4

    .line 516
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 531
    :cond_4
    :goto_1
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 532
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v7, :cond_5

    .line 533
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 534
    :cond_5
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_6

    .line 535
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 538
    :cond_6
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_7

    .line 539
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 557
    :cond_7
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 559
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v7, :cond_9

    move-object v6, v1

    .line 560
    check-cast v6, Lmiui/preference/BasePreferenceActivity;

    .line 561
    .local v6, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v6}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_9

    .line 562
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 564
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 566
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 567
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_d

    .line 568
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x14

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 570
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 576
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 581
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090215

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 586
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_9
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 593
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 594
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 597
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 600
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 602
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 604
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 607
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 517
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_b
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_c

    .line 518
    const v7, 0x7f07007a

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 524
    :cond_c
    const v7, 0x7f07007b

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 572
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_d
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2537
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 2538
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 2539
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 2540
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 387
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 2359
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 2360
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget()V

    .line 2377
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 2374
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 826
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 827
    return-void

    .line 825
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 976
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 977
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1008
    :cond_0
    :goto_0
    return v0

    .line 979
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1008
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 981
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 982
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 988
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 990
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 995
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1004
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showConfigUi(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 360
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 943
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 947
    instance-of v2, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 948
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 950
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 951
    if-nez v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 954
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 956
    const/4 v0, 0x7

    const v2, 0x7f090233

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 964
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v2

    .line 965
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 966
    const/16 v0, 0x8

    const v2, 0x7f090234

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 967
    const/16 v0, 0x9

    const v2, 0x7f090235

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 961
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1208
    packed-switch p1, :pswitch_data_0

    .line 1250
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1211
    :pswitch_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1212
    .local v3, ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1214
    new-instance v3, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1216
    .restart local v3       #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1220
    :cond_0
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1221
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1222
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 1229
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget v0, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragment;

    move-result-object v6

    .line 1237
    .local v6, guide:Lcom/android/OriginalSettings/guide/GuideFragment;
    if-eqz v6, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1239
    invoke-virtual {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1240
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/guide/GuideFragment;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1244
    .end local v6           #guide:Lcom/android/OriginalSettings/guide/GuideFragment;
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 1224
    :cond_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_1

    .line 1246
    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1248
    :pswitch_3
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f02007c

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 739
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 741
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 745
    const/4 v0, 0x6

    const v5, 0x7f090231

    invoke-interface {p1, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 746
    if-eqz v4, :cond_4

    .line 747
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020084

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 748
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 754
    const v0, 0x7f090232

    invoke-interface {p1, v1, v7, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 756
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_6

    .line 757
    const/4 v0, 0x3

    const v5, 0x7f090230

    invoke-interface {p1, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 758
    if-eqz v4, :cond_5

    .line 759
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020088

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 765
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 766
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v1

    .line 773
    :goto_2
    if-eqz v4, :cond_0

    .line 774
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 776
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 788
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-ne v5, v2, :cond_8

    .line 790
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 793
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v3, :cond_7

    .line 794
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 814
    :cond_2
    :goto_3
    if-nez v4, :cond_3

    .line 815
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_9

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 819
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 820
    return-void

    .line 750
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v2

    goto :goto_1

    .line 769
    :cond_6
    if-nez v4, :cond_a

    move v0, v2

    .line 770
    goto :goto_2

    .line 797
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 798
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 803
    :cond_8
    const v0, 0x7f09022e

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f020089

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 807
    const v0, 0x7f09022f

    invoke-interface {p1, v1, v6, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f02008a

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_9
    move v2, v1

    .line 815
    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 879
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 926
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    .line 881
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 884
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090356

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 891
    :cond_1
    const-class v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 895
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 898
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 905
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    move v7, v6

    goto :goto_0

    .line 901
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090342

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 910
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    :pswitch_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 922
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 681
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 685
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 687
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 688
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 691
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    .line 693
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 697
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 702
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 704
    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1020
    instance-of v1, p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_5

    .line 1021
    check-cast p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1024
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1027
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1028
    const-string v1, "SKT"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1032
    const-string v1, "KTT"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1040
    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1047
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1049
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1052
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1053
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090343

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1056
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1059
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 1063
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 612
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 614
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 616
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 618
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 620
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 622
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_0

    .line 623
    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 630
    .local v1, auxNetId:I
    if-eq v1, v7, :cond_1

    .line 631
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 632
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->finish()V

    .line 640
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v3, :cond_3

    .line 641
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 644
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v3, v7, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_4

    .line 647
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 649
    :cond_4
    iput v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 651
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    .line 652
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 655
    :cond_5
    sget-object v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_6

    .line 657
    sget-object v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 670
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 672
    sget v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_7

    .line 673
    sget v3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startWith(I)V

    .line 674
    sput v8, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    .line 676
    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 864
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 867
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 869
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 871
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 872
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 875
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 708
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 712
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2529
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2530
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2571
    :cond_0
    return-void
.end method

.method submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 2381
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2383
    if-nez v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2409
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2412
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2413
    return-void

    .line 2389
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_5

    .line 2390
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2391
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2393
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2395
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2398
    :cond_5
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2399
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2401
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2402
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2405
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
