.class public Lcom/android/updater/UpdaterSettings;
.super Landroid/preference/PreferenceActivity;
.source "UpdaterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private cfg:Lcom/android/updater/Config;

.field private showNotifPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/updater/UpdaterSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/Config;->getInstance(Landroid/content/Context;)Lcom/android/updater/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/UpdaterSettings;->cfg:Lcom/android/updater/Config;

    .line 37
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/updater/UpdaterSettings;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "show_notif"

    invoke-virtual {p0, v0}, Lcom/android/updater/UpdaterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/updater/UpdaterSettings;->showNotifPref:Landroid/preference/CheckBoxPreference;

    .line 40
    iget-object v0, p0, Lcom/android/updater/UpdaterSettings;->showNotifPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/updater/UpdaterSettings;->cfg:Lcom/android/updater/Config;

    invoke-virtual {v1}, Lcom/android/updater/Config;->getShowNotif()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/updater/UpdaterSettings;->showNotifPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/updater/UpdaterSettings;->showNotifPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/updater/UpdaterSettings;->cfg:Lcom/android/updater/Config;

    iget-object v1, p0, Lcom/android/updater/UpdaterSettings;->showNotifPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/updater/Config;->setShowNotif(Z)V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
