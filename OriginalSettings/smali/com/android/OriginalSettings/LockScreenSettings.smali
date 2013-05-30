.class public Lcom/android/OriginalSettings/LockScreenSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isWeatherEnabled:Z

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffectSummary:[I

    return-void

    :array_0
    .array-data 0x4
        0xbet 0xct 0x9t 0x7ft
        0xbft 0xct 0x9t 0x7ft
        0xc0t 0xct 0x9t 0x7ft
        0xc1t 0xct 0x9t 0x7ft
        0xc2t 0xct 0x9t 0x7ft
        0xc3t 0xct 0x9t 0x7ft
        0xc4t 0xct 0x9t 0x7ft
        0xc5t 0xct 0x9t 0x7ft
    .end array-data
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 549
    xor-int/lit8 p0, p0, 0x1

    .line 550
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 544
    or-int/lit8 p0, p0, 0x1

    .line 545
    return p0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/LockScreenSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/LockScreenSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_clock"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v1, v3, 0x1

    .line 258
    .local v1, mAppLockScreen:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_hovering_ink_effect"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 260
    .local v2, mInkEffectColor:I
    const-string v3, "LockScreenSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mInkEffectColor : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 263
    if-ne v1, v4, :cond_7

    .line 264
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 269
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 270
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_1

    .line 271
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "information_ticker"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_2

    .line 274
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "motion_unlock_camera_short_cut"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_b

    move v0, v5

    .line 278
    .local v0, isLiveWallpaper:Z
    :goto_5
    if-eqz v0, :cond_c

    .line 279
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 282
    :goto_6
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 284
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffectSummary:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 287
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "unlock_text"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_8
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 290
    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "wake_up_lock_screen"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_9
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_shortcut"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_10

    :goto_a
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 297
    :cond_5
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #mAppLockScreen:I
    .end local v2           #mInkEffectColor:I
    :cond_6
    move v3, v5

    .line 254
    goto/16 :goto_0

    .line 266
    .restart local v1       #mAppLockScreen:I
    .restart local v2       #mInkEffectColor:I
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move v3, v5

    .line 269
    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 271
    goto/16 :goto_3

    :cond_a
    move v3, v5

    .line 274
    goto/16 :goto_4

    :cond_b
    move v0, v4

    .line 277
    goto/16 :goto_5

    .line 281
    .restart local v0       #isLiveWallpaper:Z
    :cond_c
    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_d
    move v3, v5

    .line 282
    goto :goto_7

    :cond_e
    move v3, v5

    .line 287
    goto :goto_8

    :cond_f
    move v3, v5

    .line 290
    goto :goto_9

    :cond_10
    move v4, v5

    .line 294
    goto :goto_a
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 523
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 524
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 525
    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    :goto_0
    return v4

    .line 528
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 529
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 531
    if-nez v3, :cond_2

    .line 532
    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 533
    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 538
    .local v1, isMobileAvail:Z
    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 133
    .local v5, resolver:Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    const v8, 0x7f070034

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v8, "lock_screen_shortcut"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    .line 139
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    const-string v8, "lock_screen_shortcut"

    invoke-static {v5, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_10

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_0

    .line 142
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_0
    const-string v8, "clock"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 150
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 152
    const-string v8, "weather"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1110046

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->isWeatherEnabled:Z

    .line 155
    iget-boolean v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v8, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_1
    const-string v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 161
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v8, "information_ticker"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    .line 164
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1110044

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    :cond_4
    const-string v8, "camera_short_cut"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 182
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_6

    .line 183
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    const-string v8, "LockScreenSettings"

    const-string v11, " remove Dualclock menu"

    invoke-static {v8, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_7
    const-string v8, "ripple_effect"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v8, "ja"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v0, ""

    .line 199
    .local v0, dot:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090cbc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090d04

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering_ink_effect"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 202
    .local v2, mInkEffectColor:I
    const-string v8, "ink_effect"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 203
    const-string v8, "help_text"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v8, "say_your_wakeup"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 207
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 209
    :cond_9
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_a
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-nez v8, :cond_c

    .line 216
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 217
    .local v4, ps:Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 224
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_d
    const-string v8, "set_wakeup_command"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 229
    .local v6, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_f

    .line 230
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 231
    .local v7, set_wakeup_commant_intent:Landroid/content/Intent;
    if-eqz v7, :cond_f

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 233
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v9, :cond_f

    .line 235
    iget-object v8, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_e

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_e
    if-eqz v6, :cond_f

    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #set_wakeup_commant_intent:Landroid/content/Intent;
    :cond_f
    return-void

    .end local v0           #dot:Ljava/lang/String;
    .end local v2           #mInkEffectColor:I
    .end local v4           #ps:Landroid/preference/PreferenceScreen;
    .end local v6           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    :cond_10
    move v8, v10

    .line 140
    goto/16 :goto_0

    .line 198
    :cond_11
    const-string v0, ". "

    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, key:Ljava/lang/String;
    const-string v10, "dualclock_settings"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 333
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 334
    .local v9, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dualclock_menu_settings"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    .end local v9           #value:I
    :cond_0
    :goto_1
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 333
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 335
    .restart local p2
    :cond_2
    const-string v10, "information_ticker"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object v9, p2

    .line 336
    check-cast v9, Ljava/lang/Boolean;

    .line 342
    .local v9, value:Ljava/lang/Boolean;
    const-string v10, "CHN"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CHU"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 346
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 351
    .local v5, mAppServiceStatus:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 358
    :goto_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    :goto_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "information_ticker"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 349
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_3

    .line 356
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_4

    .line 364
    .end local v5           #mAppServiceStatus:I
    :cond_6
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 365
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 370
    .restart local v5       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 373
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 377
    :goto_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v2       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v11, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 368
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_7

    .line 375
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_8

    .line 388
    .end local v5           #mAppServiceStatus:I
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 389
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 393
    .restart local v5       #mAppServiceStatus:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 396
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 400
    :goto_a
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v2       #intent_nw:Landroid/content/Intent;
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, salesCode:Ljava/lang/String;
    const-string v10, "DCM"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 405
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.ap.camobile"

    const-string v11, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_a
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 391
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v8           #salesCode:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_9

    .line 398
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_a

    .line 414
    .restart local v2       #intent_nw:Landroid/content/Intent;
    .restart local v3       #intent_st:Landroid/content/Intent;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 417
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_e
    const-string v10, "weather"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    move-object v9, p2

    .line 418
    check-cast v9, Ljava/lang/Boolean;

    .line 419
    .restart local v9       #value:Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->checkNetwork()Z

    move-result v10

    if-nez v10, :cond_f

    .line 420
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f09090b

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 422
    :cond_f
    const-string v10, "CHN"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CHU"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 426
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 427
    iget-object v10, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 431
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 436
    .end local v1           #gpsOptionIntent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_app_service_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 437
    .local v6, mCurrentAppServiceStatus:I
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 438
    invoke-static {v6}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 439
    .restart local v5       #mAppServiceStatus:I
    const/4 v7, 0x1

    .line 444
    .local v7, mNewValue:I
    :goto_b
    if-ne v6, v7, :cond_12

    .line 445
    const-string v10, "LockScreenSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange, mCurrentAppServiceStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/mNewValue:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " same"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 441
    .end local v5           #mAppServiceStatus:I
    .end local v7           #mNewValue:I
    :cond_11
    invoke-static {v6}, Lcom/android/OriginalSettings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .line 442
    .restart local v5       #mAppServiceStatus:I
    const/4 v7, 0x0

    .restart local v7       #mNewValue:I
    goto :goto_b

    .line 448
    :cond_12
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    const-string v10, "CHN"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "CHU"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 454
    :cond_13
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    :goto_c
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 455
    :cond_14
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 456
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 458
    :cond_15
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 463
    .end local v5           #mAppServiceStatus:I
    .end local v6           #mCurrentAppServiceStatus:I
    .end local v7           #mNewValue:I
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_16
    const-string v10, "lock_screen_shortcut"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 464
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v9, 0x1

    .line 465
    .local v9, value:I
    :goto_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_shortcut"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 464
    .end local v9           #value:I
    :cond_17
    const/4 v9, 0x0

    goto :goto_d

    .line 469
    .restart local p2
    :cond_18
    iget-object v10, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v10, :cond_0

    .line 470
    const-string v10, "LockScreenSettings"

    const-string v11, "onPreferenceChange, mCameraShortCut"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 301
    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->updateState()V

    .line 327
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 302
    goto :goto_0

    .line 304
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 305
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v3, "SETTING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v0, cn:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 311
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.kweather"

    const-string v3, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 314
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const-string v3, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 318
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 319
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v2, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 319
    goto :goto_3

    .line 322
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    .line 324
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    iget-object v6, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->updateState()V

    .line 250
    return-void
.end method

.method public setCameraShortCut(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 479
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 480
    .local v0, int_value:I
    :goto_0
    if-eqz p1, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    :goto_1
    return-void

    .end local v0           #int_value:I
    :cond_0
    move v0, v1

    .line 479
    goto :goto_0

    .line 484
    .restart local v0       #int_value:I
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 486
    iput-object v4, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 489
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090a73

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905b8

    new-instance v3, Lcom/android/OriginalSettings/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/LockScreenSettings$1;-><init>(Lcom/android/OriginalSettings/LockScreenSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090125

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 502
    iget-object v1, p0, Lcom/android/OriginalSettings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/LockScreenSettings$2;-><init>(Lcom/android/OriginalSettings/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 509
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
