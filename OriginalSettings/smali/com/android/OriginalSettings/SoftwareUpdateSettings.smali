.class public Lcom/android/OriginalSettings/SoftwareUpdateSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"


# static fields
.field private static SETTING_AUTO_UPDATE:Ljava/lang/String;

.field private static SETTING_WIFI_ONLY:Ljava/lang/String;


# instance fields
.field private AutoUpdate:Landroid/preference/CheckBoxPreference;

.field private WifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    sput-object v0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    .line 31
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    sput-object v0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private InitComponent()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    const-string v0, "auto_update"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 84
    iget-object v3, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "SMLDM_BEARER"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    const-string v0, "Software Update"

    const-string v1, "Remove Wifi Only Option"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 80
    goto :goto_0

    :cond_3
    move v0, v2

    .line 84
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "Software Update"

    const-string v1, "onCreate Software Update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->InitComponent()V

    .line 55
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x20

    .line 94
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, key:Ljava/lang/String;
    const-string v5, "update"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    const-string v3, "Software Update"

    const-string v4, "Software Update Checked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 100
    :cond_1
    const-string v5, "auto_update"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    const-string v5, "Software Update"

    const-string v6, "Auto Update is Selected"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 103
    .local v0, bChecked:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "changed_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 103
    goto :goto_1

    .line 108
    .end local v0           #bChecked:Z
    :cond_3
    const-string v5, "wifi_only"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string v5, "Software Update"

    const-string v6, "Wifi only is Changed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 111
    .restart local v0       #bChecked:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.WIFIONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "changed_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 111
    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 72
    return-void
.end method
