.class public Lcom/android/updater/UpdaterAbout;
.super Landroid/preference/PreferenceActivity;
.source "UpdaterAbout.java"


# instance fields
.field private licensePref:Landroid/preference/Preference;

.field private sitePref:Landroid/preference/Preference;

.field private teamPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/updater/UpdaterAbout;->addPreferencesFromResource(I)V

    .line 39
    const-string v2, "about_version"

    invoke-virtual {p0, v2}, Lcom/android/updater/UpdaterAbout;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 41
    .local v1, versionPref:Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/UpdaterAbout;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/updater/UpdaterAbout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const-string v2, "about_pref"

    invoke-virtual {p0, v2}, Lcom/android/updater/UpdaterAbout;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/UpdaterAbout;->sitePref:Landroid/preference/Preference;

    .line 47
    const-string v2, "team_pref"

    invoke-virtual {p0, v2}, Lcom/android/updater/UpdaterAbout;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/UpdaterAbout;->teamPref:Landroid/preference/Preference;

    .line 48
    const-string v2, "license_pref"

    invoke-virtual {p0, v2}, Lcom/android/updater/UpdaterAbout;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/UpdaterAbout;->licensePref:Landroid/preference/Preference;

    .line 49
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/updater/UpdaterAbout;->teamPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/Contributors;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/updater/UpdaterAbout;->startActivity(Landroid/content/Intent;)V

    .line 64
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/updater/UpdaterAbout;->licensePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/License;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/updater/UpdaterAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/updater/UpdaterAbout;->sitePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.otaupdatecenter.pro"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/updater/UpdaterAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method
