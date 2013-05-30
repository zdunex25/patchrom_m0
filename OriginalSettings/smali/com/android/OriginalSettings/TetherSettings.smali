.class public Lcom/android/OriginalSettings/TetherSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

.field private mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 149
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTetherEnabling:Z

    .line 291
    new-instance v0, Lcom/android/OriginalSettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/TetherSettings$1;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 453
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/TetherSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/TetherSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/TetherSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/TetherSettings;)Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->startTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 949
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 950
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 951
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 956
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 950
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 949
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 956
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 266
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 269
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->generateDefaultSSID()V

    .line 289
    :cond_0
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 880
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 882
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 884
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09051d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 888
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 790
    iput p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    .line 791
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 799
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/OriginalSettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 807
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 847
    iget v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 876
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    .line 877
    return-void

    .line 849
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 857
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 858
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 859
    iput-boolean v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 860
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 861
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 862
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 865
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09051f

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 866
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->checkBluetoothVisibility()V

    goto :goto_0

    .line 870
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 718
    const/4 v5, 0x0

    .line 719
    .local v5, bluetoothTethered:I
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v2, v8

    .line 720
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v3, v7

    .line 721
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 720
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 719
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 724
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 725
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v12, v2, v8

    .line 726
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v11, v3, v7

    .line 727
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 726
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 725
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_2

    .line 731
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 732
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 733
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_6

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f090219

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 769
    :goto_4
    return-void

    .line 736
    :cond_6
    const/16 v14, 0xb

    if-ne v6, v14, :cond_7

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0900b5

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 739
    :cond_7
    const/16 v14, 0xc

    if-ne v6, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 742
    const/4 v14, 0x1

    if-le v5, v14, :cond_8

    .line 743
    const v14, 0x7f090521

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/OriginalSettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 745
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 746
    .end local v13           #summary:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_9

    .line 747
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f090520

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 748
    :cond_9
    if-eqz v4, :cond_a

    .line 749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f090523

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 751
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f09051f

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 754
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f090522

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 577
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 580
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/OriginalSettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 590
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 591
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 592
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 593
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090519

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 603
    :goto_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 604
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 606
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 608
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 637
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 640
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 641
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090522

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 647
    :goto_2
    return-void

    .line 595
    :cond_3
    iget-boolean v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTetherEnabling:Z

    if-ne v5, v3, :cond_4

    .line 596
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 597
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 600
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v1, v3

    .line 616
    .local v1, isAirplaneMode:Z
    :goto_3
    const/4 v2, 0x1

    .line 617
    .local v2, wifiHotspotAvailable:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "persist.sys.wifi_lock"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifi_lock.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 619
    const/4 v2, 0x0

    .line 622
    :cond_6
    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 623
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v5, :cond_1

    .line 624
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_7
    move v1, v4

    .line 613
    goto :goto_3

    .line 627
    .restart local v1       #isAirplaneMode:Z
    .restart local v2       #wifiHotspotAvailable:Z
    :cond_8
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v3, :cond_9

    .line 628
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 630
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 631
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 644
    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 652
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 654
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 655
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 656
    .local v10, usbError:I
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 657
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 658
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 659
    if-nez v10, :cond_0

    .line 660
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 657
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 654
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 656
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 665
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 666
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 667
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 668
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 667
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 666
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 671
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 672
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 673
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 674
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 673
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 672
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 678
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 679
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f09051a

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 680
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 681
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 714
    :goto_7
    return-void

    .line 682
    :cond_a
    if-eqz v9, :cond_c

    .line 683
    if-nez v10, :cond_b

    .line 684
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f090519

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 688
    :goto_8
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 689
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 686
    :cond_b
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f09051d

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 690
    :cond_c
    if-eqz v11, :cond_d

    .line 691
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f09051d

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 692
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 693
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 694
    :cond_d
    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 695
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f09051b

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 696
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 697
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 699
    :cond_e
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f09051c

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 700
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 701
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public checkBluetoothVisibility()V
    .locals 4

    .prologue
    .line 446
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 447
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 448
    const-string v1, "TetherSettings"

    const-string v2, "visibility is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090526

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 451
    :cond_0
    return-void
.end method

.method public generateDefaultSSID()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/16 v8, 0xd

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 983
    const/4 v1, 0x0

    .line 984
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 986
    if-eqz v0, :cond_b

    .line 987
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 990
    :goto_0
    if-nez v0, :cond_0

    .line 991
    const-string v0, ""

    .line 994
    :cond_0
    const-string v1, ""

    .line 995
    const-string v1, ""

    .line 996
    const-string v1, ""

    .line 998
    const-string v1, ""

    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 999
    const v1, 0x7f0903c9

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_4

    .line 1008
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v3, v0, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    :goto_2
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1019
    iput-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1020
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1021
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1023
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v3, "WPA2/PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v3, "WPA/PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1024
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    const-string v3, ""

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1027
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1044
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v1, "WPA2/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1045
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1055
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 1056
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1060
    :goto_5
    return-void

    .line 1001
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1002
    aget-object v1, v1, v5

    goto/16 :goto_1

    .line 1012
    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 1013
    const/16 v3, 0x2327

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1029
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1030
    array-length v4, v3

    if-ne v4, v2, :cond_6

    .line 1031
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 1033
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1034
    :goto_6
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 1035
    const-string v5, "LAST4DIGIT"

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1036
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :goto_7
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1038
    :cond_7
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1047
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 1050
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 1058
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_5

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1064
    const v0, 0x7f0908cf

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 783
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 810
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 811
    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 815
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-nez p1, :cond_1

    .line 816
    if-ne p2, v4, :cond_2

    .line 817
    iget v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    .line 818
    iput v3, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->startTethering()V

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 828
    :cond_2
    iget v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 836
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_3

    .line 837
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 838
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 841
    :cond_3
    :goto_1
    iput v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 830
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 833
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 962
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 970
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 974
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0903c8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 980
    :cond_0
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v7, 0x7f07005f

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 189
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 199
    :cond_0
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 202
    const-string v7, "enable_switch_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 205
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 206
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v7, "tethering_help"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 213
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 216
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 217
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 218
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 220
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    move v4, v8

    .line 221
    .local v4, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v6, v8

    .line 224
    .local v6, wifiAvailable:Z
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_5

    move v2, v8

    .line 226
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    :cond_2
    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_6

    .line 232
    new-instance v7, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 233
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->initWifiTethering()V

    .line 247
    :goto_3
    if-nez v2, :cond_7

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :goto_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 260
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 261
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v4           #usbAvailable:Z
    .end local v6           #wifiAvailable:Z
    :cond_3
    move v4, v9

    .line 220
    goto :goto_0

    .restart local v4       #usbAvailable:Z
    :cond_4
    move v6, v9

    .line 221
    goto :goto_1

    .restart local v6       #wifiAvailable:Z
    :cond_5
    move v2, v9

    .line 224
    goto :goto_2

    .line 242
    .restart local v2       #bluetoothAvailable:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 250
    :cond_7
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 251
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 253
    :cond_8
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21
    .parameter "id"

    .prologue
    .line 304
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 305
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 308
    .local v11, locale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 309
    .local v5, am:Landroid/content/res/AssetManager;
    const-string v17, "html/%y%z/tethering_help.html"

    const-string v18, "%y"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, path:Ljava/lang/String;
    const-string v17, "%z"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x5f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 311
    const/4 v15, 0x1

    .line 312
    .local v15, useCountry:Z
    const/4 v9, 0x0

    .line 314
    .local v9, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 318
    if-eqz v9, :cond_0

    .line 320
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 324
    :cond_0
    :goto_0
    const-string v17, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v18, "%y"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, url:Ljava/lang/String;
    const-string v18, "%z"

    if-eqz v15, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x5f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 327
    const-string v17, "%x"

    const-string v18, "usb_"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 345
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 348
    .local v12, parent:Landroid/view/ViewParent;
    if-eqz v12, :cond_1

    instance-of v0, v12, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 349
    check-cast v12, Landroid/view/ViewGroup;

    .end local v12           #parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_1
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f090527

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 441
    .end local v5           #am:Landroid/content/res/AssetManager;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #locale:Ljava/util/Locale;
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #useCountry:Z
    :goto_3
    return-object v7

    .line 315
    .restart local v5       #am:Landroid/content/res/AssetManager;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #locale:Ljava/util/Locale;
    .restart local v13       #path:Ljava/lang/String;
    .restart local v15       #useCountry:Z
    :catch_0
    move-exception v8

    .line 316
    .local v8, ignored:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 318
    if-eqz v9, :cond_0

    .line 320
    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 321
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 318
    .end local v8           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_2

    .line 320
    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 321
    :cond_2
    :goto_4
    throw v17

    .line 325
    .restart local v14       #url:Ljava/lang/String;
    :cond_3
    const-string v17, ""

    goto/16 :goto_1

    .line 328
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 329
    const-string v17, "%x"

    const-string v18, "wifi_"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 331
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 332
    const-string v17, "%x"

    const-string v18, "usb_wifi_"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 340
    :cond_6
    const-string v17, "%x"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 356
    .end local v5           #am:Landroid/content/res/AssetManager;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #locale:Ljava/util/Locale;
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #useCountry:Z
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 360
    .local v4, activity:Landroid/app/Activity;
    new-instance v17, Lcom/android/OriginalSettings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 361
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    goto/16 :goto_3

    .line 362
    .end local v4           #activity:Landroid/app/Activity;
    :cond_8
    const/16 v17, 0xa

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 363
    const-string v17, "USC"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 364
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v3, USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v16, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 368
    .local v16, warnningmsg:Landroid/widget/TextView;
    const v17, 0x7f090d29

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 369
    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    const/high16 v17, 0x4190

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextSize(F)V

    .line 371
    const/16 v17, 0xa

    const/16 v18, 0xa

    const/16 v19, 0xa

    const/16 v20, 0xa

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 372
    const/high16 v17, 0x4000

    const/high16 v18, 0x3f80

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 374
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 378
    const v17, 0x7f090d2a

    new-instance v18, Lcom/android/OriginalSettings/TetherSettings$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/TetherSettings$2;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    const/high16 v17, 0x104

    new-instance v18, Lcom/android/OriginalSettings/TetherSettings$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/TetherSettings$3;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_3

    .line 396
    .end local v3           #USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v16           #warnningmsg:Landroid/widget/TextView;
    :cond_9
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 398
    .restart local v11       #locale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ja"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v10, "ja"

    .line 399
    .local v10, language:Ljava/lang/String;
    :goto_5
    const-string v17, "file:///android_asset/html/%y/tethering_attention.html"

    const-string v18, "%y"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 406
    .restart local v14       #url:Ljava/lang/String;
    new-instance v6, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 407
    .local v6, attention_view:Landroid/webkit/WebView;
    invoke-virtual {v6, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 409
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1040014

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0905b8

    new-instance v19, Lcom/android/OriginalSettings/TetherSettings$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/TetherSettings$5;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0905b9

    new-instance v19, Lcom/android/OriginalSettings/TetherSettings$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/TetherSettings$4;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 439
    .local v7, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_3

    .line 398
    .end local v6           #attention_view:Landroid/webkit/WebView;
    .end local v7           #dialog:Landroid/app/AlertDialog;
    .end local v10           #language:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :cond_a
    const-string v10, "en"

    goto :goto_5

    .line 441
    .end local v11           #locale:Ljava/util/Locale;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 321
    .restart local v5       #am:Landroid/content/res/AssetManager;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #locale:Ljava/util/Locale;
    .restart local v13       #path:Ljava/lang/String;
    .restart local v15       #useCountry:Z
    :catch_2
    move-exception v17

    goto/16 :goto_0

    :catch_3
    move-exception v18

    goto/16 :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 772
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 774
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 779
    :goto_0
    return v2

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 892
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 895
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 898
    if-eqz v0, :cond_2

    .line 899
    const-string v0, "USC"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    .line 945
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 903
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 906
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 909
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 910
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 912
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    .line 914
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 915
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 919
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 920
    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/OriginalSettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 921
    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 926
    :goto_2
    if-nez v1, :cond_5

    .line 927
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 929
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 930
    if-eqz v2, :cond_6

    .line 931
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090523

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090522

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 937
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_8

    .line 938
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    move v0, v2

    .line 939
    goto :goto_1

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 942
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 557
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    .line 558
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 503
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 505
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 507
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    .line 508
    new-instance v4, Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/OriginalSettings/TetherSettings;Lcom/android/OriginalSettings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 510
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 512
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 523
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 526
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 528
    :cond_0
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 529
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 530
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 541
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 542
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 543
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->resume()V

    .line 545
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_4

    .line 547
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 550
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    .line 551
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 564
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 566
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->pause()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 574
    :cond_1
    return-void
.end method
