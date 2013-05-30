.class public Lcom/android/OriginalSettings/WirelessSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mKiesCategory:Landroid/preference/PreferenceCategory;

.field private mMediaShareCategory:Landroid/preference/PreferenceCategory;

.field private mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-static {p0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 449
    const v0, 0x7f0908c8

    return v0
.end method

.method getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/OriginalSettings/nfc/NfcEnabler;
    .locals 5
    .parameter "activity"
    .parameter "bToggleable"

    .prologue
    .line 424
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 425
    .local v0, nfc:Landroid/preference/SwitchPreferenceScreen;
    const-string v3, "s_beam_settings"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    .line 427
    .local v2, sBeam:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 428
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "transfer_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    const/4 v3, 0x0

    .line 444
    :goto_0
    return-object v3

    .line 439
    :cond_0
    if-eqz p2, :cond_1

    .line 440
    const-string v3, "toggle_airplane"

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 441
    if-eqz v2, :cond_1

    const-string v3, "android_beam_settings"

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 444
    :cond_1
    new-instance v3, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-direct {v3, p1, v0, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 415
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 416
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 418
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 421
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v19, 0x7f07007d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 188
    .local v2, activity:Landroid/app/Activity;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v19, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 191
    .local v12, nsd:Landroid/preference/CheckBoxPreference;
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 194
    .local v17, salesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "auto_power_on_off_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_0
    new-instance v19, Lcom/android/OriginalSettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/android/OriginalSettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 208
    .local v18, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110038

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 210
    .local v9, isWimaxEnabled:Z
    if-nez v9, :cond_c

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 212
    .local v16, root:Landroid/preference/PreferenceScreen;
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 213
    .local v15, ps:Landroid/preference/Preference;
    if-eqz v15, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    .end local v15           #ps:Landroid/preference/Preference;
    .end local v16           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    if-eqz v18, :cond_2

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 223
    :cond_2
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 232
    :cond_3
    if-eqz v18, :cond_4

    const-string v19, "bluetooth"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 237
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_5
    const-string v19, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 243
    .local v11, mGlobalProxy:Landroid/preference/Preference;
    const-string v19, "device_policy"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 246
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v19

    if-nez v19, :cond_e

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    const-string v19, "connectivity"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 252
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_f

    const-string v19, "ATT"

    const-string v20, "ro.csc.sales_code"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 253
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 296
    const-string v19, "persist.sys.roaming_menu"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_7
    :goto_3
    const/4 v8, 0x0

    .line 306
    .local v8, isCellBroadcastAppLinkEnabled:Z
    if-eqz v8, :cond_8

    .line 307
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 308
    .local v14, pm:Landroid/content/pm/PackageManager;
    const-string v19, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 310
    const/4 v8, 0x0

    .line 316
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    :goto_4
    if-nez v8, :cond_9

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 318
    .restart local v16       #root:Landroid/preference/PreferenceScreen;
    const-string v19, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 319
    .restart local v15       #ps:Landroid/preference/Preference;
    if-eqz v15, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    .end local v15           #ps:Landroid/preference/Preference;
    .end local v16           #root:Landroid/preference/PreferenceScreen;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "com.ipsec.vpnclient"

    invoke-static/range {v19 .. v20}, Lcom/android/OriginalSettings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 325
    .local v6, hasAdvVpn:Z
    const-string v19, "ATT"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    if-eqz v6, :cond_11

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :goto_5
    const-string v19, "media_share_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    .line 333
    const-string v19, "kies_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    .line 342
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.sec.android.app.kieswifi"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_6
    const/4 v3, 0x0

    .line 349
    .local v3, bToggleableNFC:Z
    if-eqz v18, :cond_a

    const-string v19, "nfc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 350
    :cond_a
    const/4 v3, 0x1

    .line 353
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/OriginalSettings/WirelessSettings;->getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/OriginalSettings/nfc/NfcEnabler;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 354
    return-void

    .line 215
    .end local v3           #bToggleableNFC:Z
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #hasAdvVpn:Z
    .end local v8           #isCellBroadcastAppLinkEnabled:Z
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #mGlobalProxy:Landroid/preference/Preference;
    :cond_c
    if-eqz v18, :cond_d

    const-string v19, "wimax"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    if-eqz v9, :cond_1

    .line 217
    :cond_d
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 218
    .restart local v15       #ps:Landroid/preference/Preference;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v15           #ps:Landroid/preference/Preference;
    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v11       #mGlobalProxy:Landroid/preference/Preference;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 255
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_f
    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 256
    .local v13, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_2

    .line 299
    .end local v13           #p:Landroid/preference/Preference;
    :cond_10
    const-string v19, "SPR"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 313
    .restart local v8       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v7

    .line 314
    .local v7, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 328
    .end local v7           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v6       #hasAdvVpn:Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 343
    :catch_1
    move-exception v5

    .line 344
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->pause()V

    .line 396
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->pause()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/NsdEnabler;->pause()V

    .line 411
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 117
    const-string v4, "mobile_network_settings"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne p2, v4, :cond_1

    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 141
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 143
    .local v1, simState:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 146
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090872

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090873

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 167
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v1           #simState:I
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 360
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->resume()V

    .line 361
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->resume()V

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/NsdEnabler;->resume()V

    .line 370
    :cond_1
    :try_start_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 372
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v2, "vpn_settings"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
