.class public Lcom/android/OriginalSettings/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;,
        Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mAdbDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTracesPref:Landroid/preference/MultiCheckPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1017
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 493
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    .local v0, enabled:Z
    :goto_0
    return v1

    .line 496
    .end local v0           #enabled:Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 497
    .restart local v0       #enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 922
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 924
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 928
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 930
    :cond_1
    return-void
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 255
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-object v0
.end method

.method private static isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1052
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 297
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 299
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    .end local v0           #hdcpChecking:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 396
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 397
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 399
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    invoke-virtual {p0, v4, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 405
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 406
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 407
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 408
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 409
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 410
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 411
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 412
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 414
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 310
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 312
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 313
    return-void
.end method

.method private updateAllOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 367
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    .local v1, cr:Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 369
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 371
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 373
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 374
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "mock_location"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 376
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 377
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 378
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 379
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 380
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 381
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 382
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 383
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 384
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 385
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 386
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 387
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 388
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 389
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 390
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 391
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 392
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 393
    return-void

    :cond_0
    move v2, v4

    .line 369
    goto :goto_0

    :cond_1
    move v2, v4

    .line 371
    goto :goto_1

    :cond_2
    move v3, v4

    .line 374
    goto :goto_2
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 687
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 688
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 689
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 690
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 667
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 668
    .local v1, scale:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 669
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 671
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 672
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 673
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 674
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 675
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 676
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 684
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 672
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    .end local v2           #val:F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 681
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 682
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 703
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 704
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 705
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 706
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 707
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 708
    if-eqz v0, :cond_0

    .line 709
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 712
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 720
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 705
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 717
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 718
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 635
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 637
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 626
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 466
    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 468
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 471
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 473
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    .local v2, lab:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 478
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    .local v3, label:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0907a6

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 480
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 485
    .end local v3           #label:Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 466
    goto :goto_0

    .line 474
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #lab:Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 475
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3       #label:Ljava/lang/String;
    goto :goto_1

    .line 482
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #label:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0907a5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateEnableTracesOptions()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 743
    const-string v0, "debug.atrace.tags.enableflags"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 744
    const-string v0, "debug.atrace.tags.enableflags"

    invoke-static {v0, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 745
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    move v2, v1

    .line 747
    :goto_0
    array-length v3, v7

    if-ge v0, v3, :cond_2

    .line 748
    shl-int v3, v4, v0

    int-to-long v8, v3

    and-long/2addr v8, v5

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    move v3, v4

    .line 749
    :goto_1
    iget-object v8, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v8, v0, v3}, Landroid/preference/MultiCheckPreference;->setValue(IZ)V

    .line 750
    if-eqz v3, :cond_0

    .line 751
    add-int/lit8 v2, v2, 0x1

    .line 747
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 748
    goto :goto_1

    .line 754
    :cond_2
    if-nez v2, :cond_3

    .line 755
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f0907bc

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    .line 763
    :goto_2
    return-void

    .line 756
    :cond_3
    array-length v0, v7

    if-ne v2, v0, :cond_4

    .line 757
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 758
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    goto :goto_2

    .line 760
    :cond_4
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 761
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v3, 0x7f0907bd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 535
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 536
    .local v3, flinger:Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 539
    .local v4, reply:Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 542
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 544
    .local v6, showCpu:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 545
    .local v2, enableGL:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 546
    .local v7, showUpdates:I
    iget-object v11, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 548
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 549
    .local v5, showBackground:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .local v1, disableOverlays:I
    iget-object v10, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 551
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v3           #flinger:Landroid/os/IBinder;
    .end local v4           #reply:Landroid/os/Parcel;
    .end local v5           #showBackground:I
    .end local v6           #showCpu:I
    .end local v7           #showUpdates:I
    :cond_0
    :goto_2
    return-void

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #enableGL:I
    .restart local v3       #flinger:Landroid/os/IBinder;
    .restart local v4       #reply:Landroid/os/Parcel;
    .restart local v6       #showCpu:I
    .restart local v7       #showUpdates:I
    :cond_1
    move v10, v9

    .line 546
    goto :goto_0

    .restart local v1       #disableOverlays:I
    .restart local v5       #showBackground:I
    :cond_2
    move v8, v9

    .line 550
    goto :goto_1

    .line 554
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v3           #flinger:Landroid/os/IBinder;
    .end local v4           #reply:Landroid/os/Parcel;
    .end local v5           #showBackground:I
    .end local v6           #showCpu:I
    .end local v7           #showUpdates:I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 594
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 417
    const/4 v3, 0x1

    .line 418
    .local v3, index:I
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 419
    .local v1, hdcpChecking:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 420
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 424
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 425
    move v3, v2

    .line 429
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 430
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 433
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 423
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 661
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 663
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090733

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090732

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 520
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 740
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 615
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 530
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 510
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 604
    return-void
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 694
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 695
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 694
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 697
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 724
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 725
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 726
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 724
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 727
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 640
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 641
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 643
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 645
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 650
    :goto_1
    return-void

    .line 641
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 648
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 629
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 632
    return-void

    .line 629
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 449
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 577
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 578
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 582
    .local v1, disableOverlays:I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #flinger:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeEnableTracesOptions()V
    .locals 6

    .prologue
    .line 766
    const-wide/16 v1, 0x0

    .line 767
    .local v1, value:J
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 769
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4, v0}, Landroid/preference/MultiCheckPreference;->getValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 770
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 768
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 775
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 776
    return-void
.end method

.method private writeEnableTracesOptions(J)V
    .locals 3
    .parameter

    .prologue
    .line 779
    const-string v0, "debug.atrace.tags.enableflags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 782
    return-void
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 597
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 599
    return-void

    .line 597
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 654
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 735
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 618
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 621
    return-void

    .line 618
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 560
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 561
    .local v1, flinger:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 565
    .local v2, showUpdates:I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #flinger:Landroid/os/IBinder;
    .end local v2           #showUpdates:I
    :cond_1
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 506
    :goto_1
    return-void

    .line 502
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions()V
    .locals 2

    .prologue
    .line 607
    const-string v1, "debug.hwui.profile"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 610
    return-void

    .line 607
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 270
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 273
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 813
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 814
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 815
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 816
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 817
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 787
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 788
    if-eqz p2, :cond_2

    .line 789
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 790
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 791
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09065d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09065c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 809
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 802
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    iput-boolean p2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 805
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 933
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 934
    if-ne p2, v1, :cond_1

    .line 935
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 936
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 943
    if-ne p2, v1, :cond_3

    .line 944
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 945
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 947
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 948
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 951
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isMockLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 182
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 186
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 190
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 194
    :cond_0
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 195
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 196
    const-string v3, "enforce_read_external"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    .line 197
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 199
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 202
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 205
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 206
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 208
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 211
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v3, "window_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 215
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    const-string v3, "transition_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 218
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    const-string v3, "animator_duration_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 221
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    const-string v3, "enable_traces"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/MultiCheckPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    .line 224
    sget-object v3, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .line 225
    .local v2, traceValues:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 226
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    sget-object v4, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 229
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, v2}, Landroid/preference/MultiCheckPreference;->setEntryValues([Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, p0}, Landroid/preference/MultiCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 235
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "app_process_limit"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 238
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 243
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 247
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 251
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 981
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 982
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 966
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 969
    :cond_0
    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 971
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 974
    :cond_3
    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 897
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 900
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 918
    :goto_0
    return v0

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 903
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 905
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 909
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 911
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    if-ne p1, v2, :cond_4

    .line 912
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions()V

    goto :goto_0

    .line 914
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 915
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 918
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 827
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v1

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 832
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 834
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 835
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09065b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09065a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 842
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 844
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 847
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 848
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 852
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 853
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 854
    invoke-static {p0}, Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;->show(Lcom/android/OriginalSettings/DevelopmentSettings;)V

    goto/16 :goto_0

    .line 856
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 858
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 859
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    .line 862
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_b

    .line 863
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 864
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 865
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 866
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 867
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 868
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 869
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 870
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 871
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 872
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 873
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 874
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 875
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 876
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    .line 877
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 878
    :cond_12
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 879
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 880
    :cond_13
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 881
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 882
    :cond_14
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 883
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 884
    :cond_15
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 885
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeTrackFrameTimeOptions()V

    goto/16 :goto_0

    .line 886
    :cond_16
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 887
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 888
    :cond_17
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 319
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 324
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 338
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 339
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 341
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 349
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 350
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 354
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isMockLocationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 358
    :cond_2
    return-void

    .line 326
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 278
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 282
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 286
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 290
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 292
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 988
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 361
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 363
    return-void
.end method
