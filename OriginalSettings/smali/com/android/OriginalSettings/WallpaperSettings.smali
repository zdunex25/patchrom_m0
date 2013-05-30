.class public Lcom/android/OriginalSettings/WallpaperSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WallpaperSettings.java"


# instance fields
.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    .local v1, resolver:Landroid/content/ContentResolver;
    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WallpaperSettings;->addPreferencesFromResource(I)V

    .line 50
    const-string v2, "homescreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/OriginalSettings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 51
    const-string v2, "lockscreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/OriginalSettings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 54
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, download_contents:Ljava/lang/String;
    const-string v2, "Wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "download_wallpaper"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 69
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/OriginalSettings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f090894

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WallpaperSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WallpaperSettings;->startActivity(Landroid/content/Intent;)V

    .line 80
    .end local v0           #pickWallpaper:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 64
    return-void
.end method
