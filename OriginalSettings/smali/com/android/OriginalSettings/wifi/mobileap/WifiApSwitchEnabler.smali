.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private isSetChecked:Z

.field private isShowPassword:I

.field private mActivity:Ljava/lang/Object;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

.field private mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRoaming:Z

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchPref"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 91
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 102
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 105
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 112
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 113
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 135
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 137
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 140
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 913
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 204
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 91
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 102
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 105
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 112
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 113
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 135
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 137
    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 140
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 913
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 208
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 211
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/OriginalSettings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 863
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 853
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 860
    :goto_0
    return-void

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "WiFi p2p on. Create dailog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    goto :goto_0
.end method

.method private afterDisconnectDialog()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 832
    packed-switch p1, :pswitch_data_0

    .line 849
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 834
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 836
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 840
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 842
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 845
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 241
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 247
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    .line 244
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const v4, 0x7f09021a

    const/4 v3, 0x5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 574
    packed-switch p1, :pswitch_data_0

    .line 632
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 633
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 634
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 636
    :goto_0
    return-void

    .line 576
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 577
    const v0, 0x7f090218

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 578
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 595
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 596
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 597
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 599
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 602
    :pswitch_2
    const v0, 0x7f090219

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 603
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 618
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 622
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 625
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 626
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 627
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 628
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 629
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 173
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 175
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    .line 184
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 189
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 197
    return-void
.end method

.method private isP2pEnabled()Z
    .locals 2

    .prologue
    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 952
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 958
    :goto_0
    return v0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 763
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 757
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    const/4 v0, 0x0

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 769
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 770
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 771
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 773
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimCheck() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const-string v1, "READY"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 784
    return-void

    .line 781
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private setSummary(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 687
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 692
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 22
    .parameter "id"

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 336
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v4, HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 342
    .local v14, view:Landroid/widget/TextView;
    const v18, 0x7f09032e

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 344
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    const/high16 v18, 0x4190

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    const/16 v18, 0xa

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    const/high16 v18, 0x4000

    const/high16 v19, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 349
    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 352
    const v18, 0x7f090323

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    const v18, 0x7f0905b9

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 367
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 371
    .end local v4           #HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v14           #view:Landroid/widget/TextView;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v5, ad:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0902e5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 373
    const v18, 0x7f0905b8

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    new-instance v18, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    const v18, 0x7f0902e6

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 387
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 391
    .end local v5           #ad:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 392
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f0902ff

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f09056b

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f0902fe

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 411
    :pswitch_3
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 412
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 413
    new-instance v18, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09029e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 420
    :pswitch_4
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v16, warnWifiDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0902c6

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b8

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b9

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09031f

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 446
    .end local v16           #warnWifiDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v15, warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0902d9

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b8

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b9

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09031f

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 466
    .end local v15           #warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 468
    .local v11, locale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 469
    const-string v13, "http://tether.docomo-de.net/dcmtrg/tether_ja.html"

    .line 472
    .local v13, tether_url:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090320

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, message:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<br/><a href=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f090321

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</a>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 475
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09031f

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b8

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b9

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 492
    .local v6, attentionDialog:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 493
    const v18, 0x102000b

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 494
    .local v7, attentionText:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 471
    .end local v6           #attentionDialog:Landroid/app/AlertDialog;
    .end local v7           #attentionText:Landroid/widget/TextView;
    .end local v12           #message:Ljava/lang/String;
    .end local v13           #tether_url:Ljava/lang/String;
    :cond_0
    const-string v13, "http://tether.docomo-de.net/dcmtrg/tether_en.html"

    .restart local v13       #tether_url:Ljava/lang/String;
    goto/16 :goto_1

    .line 498
    .end local v11           #locale:Ljava/util/Locale;
    .end local v13           #tether_url:Ljava/lang/String;
    :pswitch_7
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v8, batteryDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f090322

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b8

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b9

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090511

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 523
    .end local v8           #batteryDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const-string v18, "WifiApSwitchEnabler"

    const-string v19, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 525
    new-instance v18, Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lcom/android/OriginalSettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 533
    .local v9, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v18, "wifi_ap_show_passwd"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setCheckShowPassword(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->show()V

    .line 541
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 542
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto/16 :goto_0

    .line 534
    :catch_0
    move-exception v10

    .line 535
    .local v10, e:Ljava/lang/NullPointerException;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    goto :goto_2

    .line 537
    .end local v10           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/16 v18, 0x0

    goto :goto_3

    .line 546
    .end local v9           #cr:Landroid/content/ContentResolver;
    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    .local v17, warnWifiP2PDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0902cc

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b8

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905b9

    new-instance v20, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09031f

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v0, "type"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 792
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    invoke-virtual {v0, v1, v3}, Lmiui/preference/BasePreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1, v3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 797
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 309
    const/4 v11, 0x0

    .line 310
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 312
    .local v10, wifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 313
    check-cast v8, Ljava/lang/String;

    .line 314
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 315
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 314
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 318
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 319
    check-cast v8, Ljava/lang/String;

    .line 320
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 321
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 320
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 325
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v12, :cond_7

    .line 326
    iget-object v12, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 327
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 331
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 328
    :cond_7
    if-eqz v10, :cond_6

    .line 329
    const v12, 0x7f09021a

    invoke-direct {p0, v12}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public getStaNum()I
    .locals 4

    .prologue
    .line 889
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 890
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 891
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 892
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STANUM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 802
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 710
    :cond_0
    if-eqz p2, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 718
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 724
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 751
    .end local p2
    :goto_0
    return v1

    .line 726
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "persist.sys.wifi_lock"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_lock.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 729
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move v1, v2

    .line 731
    goto :goto_0

    .line 734
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 735
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 738
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 740
    if-eqz v0, :cond_3

    .line 746
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 748
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 231
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 236
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 222
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 934
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 935
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 937
    return-void

    .line 935
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public secSetSoftapEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 873
    if-eqz p1, :cond_0

    .line 877
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    .line 886
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public sendSetChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_0

    .line 809
    if-eqz p1, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 641
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 647
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 902
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    .line 904
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 251
    .local v4, wifiState:I
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 255
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 257
    :cond_0
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 258
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const-wide/16 v7, 0x1f4

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v9, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 273
    :goto_1
    if-eqz p1, :cond_4

    .line 274
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 275
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 276
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v7, :cond_2

    .line 277
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    .line 278
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 297
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_2
    return v5

    .line 261
    :catch_0
    move-exception v2

    .line 262
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    const v7, 0x7f09021a

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_1

    .line 285
    :cond_4
    if-nez p1, :cond_5

    .line 286
    const/4 v3, 0x0

    .line 288
    .local v3, wifiSavedState:I
    :try_start_1
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 292
    :goto_3
    if-ne v3, v6, :cond_5

    .line 293
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 294
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v3           #wifiSavedState:I
    :cond_5
    move v5, v6

    .line 297
    goto :goto_2

    .line 289
    .restart local v3       #wifiSavedState:I
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040511

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0903c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    return-void

    .line 303
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
