.class public Lcom/cyanogenmod/settings/device/mDNIeScenario;
.super Landroid/preference/ListPreference;
.source "mDNIeScenario.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, p0}, Lcom/cyanogenmod/settings/device/mDNIeScenario;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 38
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    invoke-static {}, Lcom/cyanogenmod/settings/device/mDNIeScenario;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    const-string v2, "mdnie_scenario"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 55
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method
