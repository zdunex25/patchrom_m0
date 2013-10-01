.class public Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "ScreenFragmentActivity.java"


# instance fields
.field private mLedFade:Lcom/cyanogenmod/settings/device/LedFade;

.field private mmDNIeMode:Lcom/cyanogenmod/settings/device/mDNIeMode;

.field private mmDNIeNegative:Lcom/cyanogenmod/settings/device/mDNIeNegative;

.field private mmDNIeScenario:Lcom/cyanogenmod/settings/device/mDNIeScenario;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "touchkey_light"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 99
    .local v0, light:Z
    const-string v3, "/sys/class/sec/sec_touchkey/force_disable"

    if-eqz v0, :cond_0

    const-string v2, "0"

    :goto_0
    invoke-static {v3, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "/sys/class/sec/sec_touchkey/brightness"

    if-eqz v0, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-static {v3, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 99
    :cond_0
    const-string v2, "1"

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "2"

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "mdnie_scenario"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/device/mDNIeScenario;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeScenario:Lcom/cyanogenmod/settings/device/mDNIeScenario;

    .line 53
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeScenario:Lcom/cyanogenmod/settings/device/mDNIeScenario;

    invoke-static {}, Lcom/cyanogenmod/settings/device/mDNIeScenario;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/device/mDNIeScenario;->setEnabled(Z)V

    .line 55
    const-string v1, "mdnie_mode"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/device/mDNIeMode;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeMode:Lcom/cyanogenmod/settings/device/mDNIeMode;

    .line 56
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeMode:Lcom/cyanogenmod/settings/device/mDNIeMode;

    invoke-static {}, Lcom/cyanogenmod/settings/device/mDNIeMode;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/device/mDNIeMode;->setEnabled(Z)V

    .line 58
    const-string v1, "mdnie_negative"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/device/mDNIeNegative;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeNegative:Lcom/cyanogenmod/settings/device/mDNIeNegative;

    .line 59
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mmDNIeNegative:Lcom/cyanogenmod/settings/device/mDNIeNegative;

    invoke-static {}, Lcom/cyanogenmod/settings/device/mDNIeNegative;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/device/mDNIeNegative;->setEnabled(Z)V

    .line 61
    const-string v1, "led_fade"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/device/LedFade;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mLedFade:Lcom/cyanogenmod/settings/device/LedFade;

    .line 62
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mLedFade:Lcom/cyanogenmod/settings/device/LedFade;

    invoke-static {}, Lcom/cyanogenmod/settings/device/LedFade;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/device/LedFade;->setEnabled(Z)V

    .line 64
    const-string v1, "touchkey_light"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "touchkey_timeout"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "touchkey_timeout"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 74
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, key:Ljava/lang/String;
    const-string v1, "GalaxyS3Settings_Screen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "touchkey_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "/sys/class/sec/sec_touchkey/force_disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "/sys/class/sec/sec_touchkey/brightness"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "touchkey_timeout"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    const-string v1, "/sys/class/sec/sec_touchkey/force_disable"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "/sys/class/sec/sec_touchkey/brightness"

    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "touchkey_timeout"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
