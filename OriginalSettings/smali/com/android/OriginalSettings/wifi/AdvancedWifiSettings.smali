.class public Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# instance fields
.field private allowWifi:Z

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/OriginalSettings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/OriginalSettings/wifi/IwlanEnabler;

.field private mPriorityDialog:Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 94
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnPriorityMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 116
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 518
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 718
    const-string v0, "/data/misc/wifi/message.txt"

    .line 720
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    const-string v0, ""

    .line 744
    :goto_0
    return-object v0

    .line 726
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformation, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 738
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 738
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 744
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 34

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v26

    .line 180
    .local v26, wifiEnabled:Z
    const-string v29, "connect_seamlessly"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 183
    .local v9, connectSeamlessly:Landroid/preference/CheckBoxPreference;
    const-string v29, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 197
    .local v17, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_0

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "wifi_networks_available_notification_on"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const/16 v29, 0x1

    :goto_0
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    const-string v29, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 206
    .local v19, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v19, :cond_1

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_1
    :goto_1
    const-string v29, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 226
    .local v4, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    :cond_2
    const-string v29, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 242
    .local v5, cmccConnectType:Landroid/preference/ListPreference;
    if-eqz v5, :cond_3

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_3
    const-string v29, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    .line 248
    .local v12, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v12, :cond_4

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_4
    const-string v29, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    .line 265
    .local v23, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v23, :cond_6

    .line 266
    const v29, 0x7f0400c3

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 268
    const v29, 0x7f0a0026

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 270
    :cond_5
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "wifi_sleep_policy"

    const/16 v31, 0x2

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 274
    .local v25, value:I
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 275
    .local v24, stringValue:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 280
    .end local v24           #stringValue:Ljava/lang/String;
    .end local v25           #value:I
    :cond_6
    const-string v29, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 281
    .local v7, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v29, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 283
    .local v8, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 284
    if-eqz v7, :cond_7

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "wifi_connection_monitor_enable"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    const/16 v29, 0x1

    :goto_2
    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "SKT"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 303
    .local v18, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v29, "iwlan_enabled_category"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 304
    .local v22, removablePref:Landroid/preference/Preference;
    if-eqz v22, :cond_8

    .line 305
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_8
    const-string v29, "iwlan_networks"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 307
    if-eqz v22, :cond_9

    .line 308
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_9
    const-string v29, "add_other_iwlan"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 311
    if-eqz v22, :cond_a

    .line 312
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    .end local v18           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v22           #removablePref:Landroid/preference/Preference;
    :cond_a
    const-string v29, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 319
    .local v16, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_b

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "LGU"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 322
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "com.lguplus.common.wificm.mwlan"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 323
    .local v15, mWlan:Landroid/content/Context;
    const-string v29, "mwlan"

    const/16 v30, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 324
    .local v21, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v29, "mwlan"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 325
    .local v20, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v29, "permission_allowed_2"

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 326
    .local v14, isAllowed_4:Z
    const-string v29, "permission_allowed_2"

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 327
    .local v13, isAllowed:Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 331
    .local v10, e:Landroid/content/SharedPreferences$Editor;
    const-string v29, "mwlan_permission_allowed_2"

    move-object/from16 v0, v29

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    const-string v29, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v10           #e:Landroid/content/SharedPreferences$Editor;
    .end local v13           #isAllowed:Z
    .end local v14           #isAllowed_4:Z
    .end local v15           #mWlan:Landroid/content/Context;
    .end local v20           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v21           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_b
    :goto_4
    const-string v29, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 352
    .local v6, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_c

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_c
    const-string v29, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 369
    const-string v29, "AdvancedWifiSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "WiFi Timer:  before value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "wifitimer_enabled"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "  allowWifi:     "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v29, v0

    const-string v30, "wifitimer_enabled"

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v29, v0

    if-nez v29, :cond_16

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 375
    .local v11, ed:Landroid/content/SharedPreferences$Editor;
    const-string v29, "wifitimer_enabled"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    new-instance v3, Landroid/content/Intent;

    const-string v29, "com.android.settings.wifi.wifitimer_alarm"

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, alarm_intent:Landroid/content/Intent;
    const-string v29, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v30, 0x1389

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 400
    .end local v3           #alarm_intent:Landroid/content/Intent;
    .end local v11           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_d
    :goto_5
    return-void

    .line 199
    .end local v4           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v5           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v7           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v8           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v12           #frequencyPref:Landroid/preference/ListPreference;
    .end local v16           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v19           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v23           #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_e
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v19       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    :cond_f
    const v29, 0x7f090333

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 211
    const v29, 0x7f090334

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "wifi_watchdog_poor_network_test_enabled"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    const/16 v29, 0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_10
    const/16 v29, 0x0

    goto :goto_6

    .line 285
    .restart local v4       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v5       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v7       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v8       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v12       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v23       #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 289
    :cond_12
    if-eqz v7, :cond_13

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    :cond_13
    if-eqz v8, :cond_7

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 336
    .restart local v16       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 338
    .restart local v18       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v29, "mwlan_enabled_category"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 339
    .restart local v22       #removablePref:Landroid/preference/Preference;
    if-eqz v22, :cond_15

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 382
    .end local v18           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v22           #removablePref:Landroid/preference/Preference;
    .restart local v6       #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v29, v0

    const-string v30, "wifitimer_start_time_checked"

    const/16 v31, 0x1

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string v31, "wifitimer_start_time"

    const-string v32, "19:00"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 384
    .local v28, wifiTimerStartTime:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v29, v0

    const-string v30, "wifitimer_end_time_checked"

    const/16 v31, 0x1

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string v31, "wifitimer_end_time"

    const-string v32, "21:00"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 386
    .local v27, wifiTimerEndTime:Ljava/lang/String;
    :goto_8
    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    const-string v29, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0902b7

    invoke-virtual/range {v29 .. v30}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setSummaryOn(I)V

    .line 390
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 382
    .end local v27           #wifiTimerEndTime:Ljava/lang/String;
    .end local v28           #wifiTimerStartTime:Ljava/lang/String;
    :cond_17
    const-string v28, ""

    goto :goto_7

    .line 384
    .restart local v28       #wifiTimerStartTime:Ljava/lang/String;
    :cond_18
    const-string v27, ""

    goto :goto_8

    .line 389
    .restart local v27       #wifiTimerEndTime:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "~"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 393
    .end local v27           #wifiTimerEndTime:Ljava/lang/String;
    .end local v28           #wifiTimerStartTime:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 334
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v29

    goto/16 :goto_4
.end method

.method private refreshWifiInfo()V
    .locals 10

    .prologue
    const v9, 0x7f0904a6

    .line 628
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 630
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v7, "mac_address"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 631
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v2, 0x0

    .line 632
    .local v2, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .end local v2           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    const-string v7, "current_ip_address"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 636
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/OriginalSettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, ipAddress:Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #ipAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    const-string v7, "wifi_authentication_information"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 642
    .local v3, wifiAuthenticationInfoPref:Landroid/preference/Preference;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v8, "AKA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, ""

    const-string v8, "KTT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 643
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, information:Ljava/lang/String;
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    if-eqz v0, :cond_5

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 648
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    .end local v0           #information:Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 631
    .end local v3           #wifiAuthenticationInfoPref:Landroid/preference/Preference;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 632
    .restart local v2       #macAddress:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v2           #macAddress:Ljava/lang/String;
    .restart local v0       #information:Ljava/lang/String;
    .restart local v3       #wifiAuthenticationInfoPref:Landroid/preference/Preference;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v7, v0

    .line 644
    goto :goto_2

    .line 650
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 653
    .end local v0           #information:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 660
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090ca0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 678
    return-void
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/OriginalSettings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/OriginalSettings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/IwlanDialog;->dismiss()V

    .line 713
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/OriginalSettings/wifi/IwlanDialog;

    .line 714
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/OriginalSettings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/IwlanDialog;->show()V

    .line 715
    return-void
.end method

.method private showPriorityDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;->dismiss()V

    .line 685
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

    .line 686
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/PrioritySettingDialog;->show()V

    .line 687
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 403
    if-eqz p2, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0026

    .line 407
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 409
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 411
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 405
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0025

    goto :goto_0

    .line 408
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 153
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 157
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 441
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 442
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 175
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, key:Ljava/lang/String;
    const-string v10, "frequency_band"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 539
    :try_start_0
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    const-string v10, "sleep_policy"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 549
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 550
    .local v6, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_sleep_policy"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    invoke-direct {p0, p1, v6}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    .end local v6           #stringValue:Ljava/lang/String;
    .end local p1
    .end local p2
    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 540
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v2

    .line 541
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f09034b

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 543
    const/4 v10, 0x0

    goto :goto_1

    .line 553
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 554
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f090226

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 556
    const/4 v10, 0x0

    goto :goto_1

    .line 559
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v10, "wifi_timer"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 560
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 561
    .local v4, enabled:Z
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    check-cast p1, Lcom/android/OriginalSettings/SettingsSwitchPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    .line 564
    if-eqz v4, :cond_4

    .line 566
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 567
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiTimer allowWifi:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-boolean v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v10, :cond_5

    .line 570
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 571
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v9, wifiToastIntent:Landroid/content/Intent;
    const-string v10, "info_type"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 574
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v10, :cond_3

    .line 575
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$SwitchHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings$SwitchHandler;->sendEmptyMessage(I)Z

    .line 577
    :cond_3
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 589
    .end local v9           #wifiToastIntent:Landroid/content/Intent;
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 590
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v10, "wifitimer_enabled"

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, alarm_intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v11, 0x1389

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    .end local v1           #alarm_intent:Landroid/content/Intent;
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_start_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_start_time"

    const-string v13, "19:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, wifiTimerStartTime:Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_end_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_end_time"

    const-string v13, "21:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, wifiTimerEndTime:Ljava/lang/String;
    :goto_4
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 584
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    const v11, 0x7f0902b7

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setSummaryOn(I)V

    goto :goto_2

    .line 579
    .end local v7           #wifiTimerEndTime:Ljava/lang/String;
    .end local v8           #wifiTimerStartTime:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3

    .line 581
    .restart local v8       #wifiTimerStartTime:Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto :goto_4

    .line 586
    .restart local v7       #wifiTimerEndTime:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/OriginalSettings/SettingsSwitchPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "~"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/SettingsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 446
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :cond_1
    :goto_0
    return v7

    .line 452
    :cond_2
    const-string v1, "wifi_poor_network_detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 457
    :cond_4
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 458
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902b6

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 465
    :cond_5
    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 466
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 467
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 468
    iput v7, v1, Landroid/os/Message;->what:I

    .line 470
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 471
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-nez v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connecct"

    if-eqz v0, :cond_6

    move v6, v7

    :cond_6
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 477
    :cond_7
    const-string v1, "wifi_cmcc_priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 478
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 482
    :cond_8
    const-string v1, "wifi_connection_priority_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 483
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 485
    if-eqz v0, :cond_9

    .line 486
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->showDialog()V

    goto/16 :goto_0

    .line 488
    :cond_9
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 491
    :cond_a
    instance-of v1, p2, Lcom/android/OriginalSettings/wifi/IwlanNetwork;

    if-eqz v1, :cond_b

    .line 492
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Lcom/android/OriginalSettings/wifi/IwlanNetwork;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 493
    :cond_b
    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 494
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lguplus.common.wificm.mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 497
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 498
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 499
    const-string v2, "permission_allowed_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 501
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWlan isChecked =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_c

    const v0, 0x7f090ca5

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 510
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 507
    :cond_c
    const v0, 0x7f090ca6

    goto :goto_1

    .line 512
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 165
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 168
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 691
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 693
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Lcom/android/OriginalSettings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/OriginalSettings/wifi/IwlanEnabler;

    .line 695
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/OriginalSettings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->onStart()V

    .line 697
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 701
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 703
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/OriginalSettings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/IwlanEnabler;->onStop()V

    .line 706
    :cond_0
    return-void
.end method
