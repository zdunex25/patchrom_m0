.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# instance fields
.field private final MHS_REQUEST:I

.field private isRoaming:Z

.field private isShowPassword:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsTablet:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 127
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 129
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 130
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 169
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    .line 171
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 639
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 666
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Lcom/android/OriginalSettings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    sparse-switch p1, :sswitch_data_0

    .line 707
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 695
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 697
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 701
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 703
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 705
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 693
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 711
    packed-switch p1, :pswitch_data_0

    .line 725
    :goto_0
    :pswitch_0
    return v0

    .line 713
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 715
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 717
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 721
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 723
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 762
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 763
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 767
    :cond_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private saveTimeoutPreference(I)V
    .locals 3
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 737
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 791
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 794
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 796
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 800
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 801
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0902df

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 802
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 803
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 804
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 825
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 808
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 810
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 813
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 814
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0902d4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 815
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 822
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 730
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 259
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v10, connectedDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v18

    .line 262
    .local v18, staList:Ljava/lang/String;
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 263
    .local v15, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v15, Landroid/os/Message;->what:I

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v16

    .line 266
    .local v16, num:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 267
    if-eqz v18, :cond_7

    if-lez v16, :cond_7

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, buf:Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 270
    .local v19, tok:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 273
    .local v20, tokLength:I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v22, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2000

    move/from16 v0, v22

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 274
    .end local v7           #buf:Ljava/io/BufferedReader;
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, bufReadLine:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 275
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, dhcpLeaseInfo:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 277
    array-length v2, v11

    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v2, v0, :cond_3

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_3

    .line 279
    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    aget-object v2, v19, v13

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v22, v19, v13

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    const v2, 0x7f0902dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, deviceName:Ljava/lang/String;
    :goto_2
    aget-object v4, v19, v13

    .line 287
    .local v4, mac:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 288
    .local v5, ip:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 290
    .local v6, connectTime:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v1, device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    .end local v1           #device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v6           #connectTime:Ljava/lang/String;
    .end local v9           #bufReadLine:Ljava/lang/String;
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 298
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    if-eqz v7, :cond_1

    .line 302
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 307
    .end local v12           #e:Ljava/io/IOException;
    :cond_1
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    .line 308
    .local v21, wifiApConnectedDevices:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 284
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #wifiApConnectedDevices:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #bufReadLine:Ljava/lang/String;
    .restart local v11       #dhcpLeaseInfo:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_2
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3       #deviceName:Ljava/lang/String;
    goto :goto_2

    .line 276
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 301
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_4
    if-eqz v8, :cond_5

    .line 302
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v7, v8

    .line 305
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 303
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 304
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 306
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 303
    .end local v9           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 304
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 300
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 301
    :goto_6
    if-eqz v7, :cond_6

    .line 302
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 305
    :cond_6
    :goto_7
    throw v2

    .line 303
    :catch_3
    move-exception v12

    .line 304
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 311
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #tok:[Ljava/lang/String;
    .end local v20           #tokLength:I
    :cond_7
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 312
    .local v17, pf:Landroid/preference/Preference;
    const v2, 0x7f0902ef

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 315
    .end local v17           #pf:Landroid/preference/Preference;
    :cond_8
    return-void

    .line 300
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v19       #tok:[Ljava/lang/String;
    .restart local v20       #tokLength:I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 297
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8
    .parameter "showIcon"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x500

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 427
    .local v0, mWidth:I
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 428
    if-eqz p1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020090

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 430
    if-ge v0, v6, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 440
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 441
    if-eqz p1, :cond_5

    .line 442
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f02021a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 443
    if-ge v0, v6, :cond_4

    .line 444
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 453
    :cond_1
    :goto_1
    return-void

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 437
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 449
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 450
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 318
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    :cond_0
    const v1, 0x7f0902f5

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 349
    :cond_2
    return-void

    .line 338
    :cond_3
    const v1, 0x7f0902f4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "#94b4c3"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 197
    const v2, 0x7f070074

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 206
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 208
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 209
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 211
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 213
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 216
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-direct {v2, v0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 217
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 239
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    .line 240
    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 241
    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 242
    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 243
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 244
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v3, 0x7f0400bb

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 247
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 249
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 250
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    .line 251
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 253
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 255
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 221
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 222
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 224
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 229
    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 230
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 677
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-nez p1, :cond_0

    .line 679
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 687
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 419
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    return-void

    .line 419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 193
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const/high16 v6, -0x100

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 524
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 525
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_6

    .line 526
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v2, v0

    .line 528
    :goto_0
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 532
    if-ne p1, v3, :cond_1

    .line 536
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v2, v5, v6}, Lcom/android/OriginalSettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 537
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 539
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 544
    :try_start_0
    const-string v2, "wifi_ap_show_passwd"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isShowPassword:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    iget v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setCheckShowPassword(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 636
    :goto_3
    return-object v0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    goto :goto_1

    :cond_0
    move v0, v1

    .line 548
    goto :goto_2

    .line 553
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 554
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 555
    const v1, 0x7f0400fd

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 556
    const v0, 0x7f0b02e3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 557
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a001f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 561
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 562
    const v1, 0x7f0b002a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x10900e3

    const v7, 0x1020014

    invoke-direct {v1, v2, v6, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 571
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 572
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 573
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 580
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905b8

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090125

    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_3

    .line 595
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 596
    const-string v1, "WifiApSettings"

    const-string v2, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    const v1, 0x7f09031f

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 600
    const v1, 0x7f0400fc

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 601
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 602
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 603
    const v0, 0x7f0b02e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    :cond_4
    const v0, 0x7f0b02e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 606
    const v3, 0x7f0b02e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 607
    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    const v0, 0x7f0905b9

    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    move-object v0, v4

    .line 636
    goto/16 :goto_3

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    const v4, 0x7f0902d2

    invoke-interface {p1, v3, v7, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 384
    .local v1, menuTimeOut:Landroid/view/MenuItem;
    const v4, 0x7f020227

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 386
    const v4, 0x7f0902d3

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 387
    const/4 v4, 0x3

    const v5, 0x7f0902d1

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 388
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020090

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02021a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 392
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 405
    :goto_0
    const v4, 0x7f0902d4

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 406
    .local v0, menuHelp:Landroid/view/MenuItem;
    const v4, 0x7f02021c

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v4, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 413
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 414
    return-void

    .line 394
    .end local v0           #menuHelp:Landroid/view/MenuItem;
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 395
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .restart local v0       #menuHelp:Landroid/view/MenuItem;
    :cond_2
    move v2, v3

    .line 410
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 466
    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    :cond_1
    move v0, v7

    .line 469
    goto :goto_0

    .line 471
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v7

    .line 473
    goto :goto_0

    .line 475
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902d3

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 482
    goto :goto_0

    .line 480
    :cond_2
    const-class v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 485
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090304

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_3
    move v0, v7

    .line 490
    goto :goto_0

    .line 493
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_4

    .line 504
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApHelpScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902d4

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_4
    move v0, v7

    .line 509
    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 373
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 374
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 519
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 353
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 354
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 359
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 364
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 458
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 786
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 788
    return-void

    .line 786
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
