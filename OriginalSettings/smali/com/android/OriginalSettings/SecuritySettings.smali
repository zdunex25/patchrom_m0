.class public Lcom/android/OriginalSettings/SecuritySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/SecuritySettings$5;,
        Lcom/android/OriginalSettings/SecuritySettings$PWState;
    }
.end annotation


# instance fields
.field private ChangingSIMAlert:Landroid/preference/Preference;

.field private RemoteControls:Landroid/preference/Preference;

.field private isDeviceLockTime:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableADB:Landroid/preference/CheckBoxPreference;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOptions:Landroid/preference/PreferenceScreen;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private mWithCircle:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 170
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDisableADB:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f090020

    const/16 v3, 0x64

    .line 915
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$5;->$SwitchMap$com$android$settings$SecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 943
    :goto_0
    return-void

    .line 917
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 918
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CONFIRM:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/OriginalSettings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 925
    :pswitch_1
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 926
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 933
    :pswitch_2
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->NEW:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 934
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/OriginalSettings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    const v2, 0x7f090020

    .line 891
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    if-nez v0, :cond_0

    .line 894
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->NEW:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 895
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/OriginalSettings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 902
    :goto_0
    return-void

    .line 898
    :cond_0
    sget-object v1, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPWState:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 899
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/OriginalSettings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    const v12, 0x7f090015

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 203
    .local v7, root:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_0

    .line 204
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 206
    :cond_0
    const v10, 0x7f070048

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, resid:I
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_11

    .line 212
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 213
    const v6, 0x7f07004d

    .line 270
    :goto_0
    const-string v10, "device_policy"

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 273
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v10

    if-nez v10, :cond_1

    .line 274
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 293
    :cond_1
    :goto_1
    :pswitch_0
    new-instance v3, Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 294
    .local v3, epm:Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;
    invoke-virtual {v3}, Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 295
    const v10, 0x7f070053

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 299
    :cond_2
    const-string v10, "lock_after_timeout"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 300
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v10, :cond_4

    .line 302
    iget-boolean v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    if-eqz v10, :cond_3

    .line 303
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 304
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 305
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0008

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 306
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0009

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 309
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->setupLockAfterPreference()V

    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 314
    :cond_4
    const-string v10, "biometric_weak_liveliness"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 318
    const-string v10, "visiblepattern"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 321
    const-string v10, "power_button_instantly_locks"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 325
    const v10, 0x7f070049

    if-eq v6, v10, :cond_5

    const v10, 0x7f070054

    if-ne v6, v10, :cond_6

    :cond_5
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    const/high16 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 328
    const-string v10, "security_category"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 330
    .local v8, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v8, :cond_6

    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_6

    .line 331
    const-string v10, "visiblepattern"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    .end local v8           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_6
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_7

    .line 337
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 338
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 344
    :cond_7
    const-string v10, "with_circle"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    .line 346
    const-string v10, "lock_screen_options"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    .line 349
    const-string v10, "visiblesignature"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 350
    const-string v10, "signature_verification_level"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 351
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v10, :cond_8

    .line 352
    invoke-direct {p0, v13}, Lcom/android/OriginalSettings/SecuritySettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 356
    :cond_8
    const-string v10, "unlock_tactile_feedback"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 357
    const-string v10, "vibrator"

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-nez v10, :cond_9

    .line 358
    const-string v10, "security_category"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 360
    .restart local v8       #securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v8, :cond_9

    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_9

    .line 361
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    .end local v8           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_9
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_16

    .line 367
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-nez v10, :cond_15

    .line 368
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    .line 391
    :cond_a
    :goto_2
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 392
    .local v1, LostPhonePreferences:Landroid/preference/PreferenceCategory;
    const v10, 0x7f0908e4

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 393
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    .line 396
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    const v11, 0x7f0908eb

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 397
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    new-instance v11, Lcom/android/OriginalSettings/SecuritySettings$2;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/SecuritySettings$2;-><init>(Lcom/android/OriginalSettings/SecuritySettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 411
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 413
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 416
    :cond_b
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 417
    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    .line 418
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    const-string v11, "SIMAlert"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 419
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    const v11, 0x7f0908e5

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 420
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    new-instance v11, Lcom/android/OriginalSettings/SecuritySettings$3;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/SecuritySettings$3;-><init>(Lcom/android/OriginalSettings/SecuritySettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 432
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v10, v14, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 437
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    :cond_e
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, GoToSamsungDive:Landroid/preference/Preference;
    const v10, 0x7f090900

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 441
    new-instance v10, Lcom/android/OriginalSettings/SecuritySettings$4;

    invoke-direct {v10, p0}, Lcom/android/OriginalSettings/SecuritySettings$4;-><init>(Lcom/android/OriginalSettings/SecuritySettings;)V

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 454
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 456
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 460
    :cond_f
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v10

    if-lez v10, :cond_18

    .line 530
    :goto_3
    return-object v7

    .line 215
    .end local v0           #GoToSamsungDive:Landroid/preference/Preference;
    .end local v1           #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #epm:Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;
    :cond_10
    const v6, 0x7f07004a

    goto/16 :goto_0

    .line 217
    :cond_11
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 219
    const v6, 0x7f070049

    goto/16 :goto_0

    .line 220
    :cond_12
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 222
    const v6, 0x7f070054

    goto/16 :goto_0

    .line 224
    :cond_13
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 237
    :goto_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 226
    :sswitch_0
    const v6, 0x7f070050

    .line 227
    goto :goto_4

    .line 229
    :sswitch_1
    const v6, 0x7f070052

    .line 230
    goto :goto_4

    .line 234
    :sswitch_2
    const v6, 0x7f07004f

    goto :goto_4

    .line 278
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-ne v10, v14, :cond_14

    .line 279
    const v10, 0x7f07004c

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 281
    :cond_14
    const v10, 0x7f07004b

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 287
    :pswitch_2
    const v10, 0x7f070055

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 374
    .restart local v3       #epm:Lcom/android/OriginalSettings/encryption/EncryptionPreferenceManager;
    :cond_15
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 377
    :cond_16
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 380
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_face_with_voice"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 381
    .local v4, isfacevalue:I
    if-ne v4, v14, :cond_17

    .line 386
    :cond_17
    const-string v10, "SecuritySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 465
    .end local v4           #isfacevalue:I
    .restart local v0       #GoToSamsungDive:Landroid/preference/Preference;
    .restart local v1       #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_DisableMenuFindMyMobile"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v14, :cond_19

    .line 466
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 472
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 473
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    const v11, 0x7f09001e

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 475
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 476
    .local v5, phonePasswordCat:Landroid/preference/PreferenceCategory;
    const v10, 0x7f09001d

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 477
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 478
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 500
    .end local v5           #phonePasswordCat:Landroid/preference/PreferenceCategory;
    :cond_1a
    const v10, 0x7f07004e

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 503
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 506
    .local v9, tm:Landroid/telephony/TelephonyManager;
    const-string v10, "SPR"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    const-string v10, "USC"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 507
    :cond_1b
    const-string v10, "sim_lock"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 521
    :cond_1c
    :goto_5
    const-string v10, "show_password"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 524
    const-string v10, "reset_credentials"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 526
    const-string v10, "toggle_install_applications"

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 528
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 508
    :cond_1d
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 509
    const-string v10, "sim_lock"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 512
    :cond_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-eq v10, v14, :cond_1f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-nez v10, :cond_1c

    .line 516
    :cond_1f
    const-string v10, "sim_lock"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableDeviceLockTimeLessThanDisplayTimeouts()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 600
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 601
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 602
    .local v9, values:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v5, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "screen_off_timeout"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v0, v10

    .line 609
    .local v0, displayTimeout:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v9

    if-ge v3, v10, :cond_1

    .line 610
    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 611
    .local v6, timeout:J
    if-lez v3, :cond_0

    cmp-long v10, v0, v6

    if-lez v10, :cond_0

    .line 609
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_0
    aget-object v10, v2, v3

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    aget-object v10, v9, v3

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    .end local v6           #timeout:J
    :cond_1
    iget-object v12, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 618
    iget-object v12, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 620
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 621
    .local v8, userPreference:I
    int-to-long v12, v8

    cmp-long v10, v12, v0

    if-gez v10, :cond_2

    .line 622
    iget-object v10, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 624
    :cond_2
    iget-object v12, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v12, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 625
    return-void

    :cond_3
    move v10, v11

    .line 624
    goto :goto_2
.end method

.method private disableUnusableTimeouts(J)V
    .locals 17
    .parameter "maxTimeout"

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 682
    .local v3, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 683
    .local v12, values:[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v7, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v8, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v1, v13

    .line 689
    .local v1, displayTimeout:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v12

    if-ge v4, v13, :cond_1

    .line 690
    aget-object v13, v12, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 691
    .local v9, timeout:J
    cmp-long v13, v9, p1

    if-gtz v13, :cond_0

    .line 692
    aget-object v13, v3, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    aget-object v13, v12, v4

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 698
    .end local v9           #timeout:J
    :cond_1
    const-string v13, "SecuritySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "revisedValues.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v5, p1, v13

    .line 700
    .local v5, last_timeout:J
    const-string v13, "SecuritySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "last_timeout : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_2

    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-gez v13, :cond_2

    .line 702
    const v13, 0x7f090b85

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/OriginalSettings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 712
    .local v11, userPreference:I
    int-to-long v13, v11

    cmp-long v13, v13, p1

    if-gtz v13, :cond_3

    .line 713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 722
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 724
    return-void

    .line 715
    :cond_3
    const-string v13, "SecuritySettings"

    const-string v14, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 722
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1061
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1062
    div-long v2, v0, v4

    .line 1063
    rem-long v4, v0, v4

    .line 1065
    const-string v0, ""

    .line 1066
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100006

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100007

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    :cond_2
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-object v0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1083
    .line 1084
    iget-boolean v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1085
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1091
    :goto_0
    if-nez v2, :cond_2

    .line 1097
    :cond_0
    :goto_1
    return v1

    .line 1087
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1093
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1094
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1093
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 947
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 576
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 577
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 578
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 579
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 581
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 587
    iget-boolean v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_3

    .end local v0           #adminTimeout:J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 592
    :cond_0
    iget-boolean v6, p0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    if-eqz v6, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->disableDeviceLockTimeLessThanDisplayTimeouts()V

    .line 596
    :cond_1
    return-void

    .end local v4           #displayTimeout:J
    :cond_2
    move-wide v0, v6

    .line 578
    goto :goto_0

    .line 587
    .restart local v0       #adminTimeout:J
    .restart local v4       #displayTimeout:J
    :cond_3
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .parameter "isUpdate"

    .prologue
    const/4 v11, 0x1

    .line 727
    if-nez p1, :cond_0

    .line 728
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0400c3

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 729
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_signature_verification_level"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 735
    .local v1, currentLevel:I
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 737
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 738
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 740
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 741
    .local v0, best:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 742
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 743
    .local v4, level:J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 744
    move v0, v3

    .line 741
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v4           #level:J
    :cond_2
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, levelString:Ljava/lang/String;
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get signature verification level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f090ba6

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 752
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 632
    .local v5, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 633
    .local v9, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 634
    .local v17, values:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 635
    .local v4, best:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 636
    aget-object v18, v17, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 637
    .local v15, timeout:J
    cmp-long v18, v5, v15

    if-ltz v18, :cond_0

    .line 638
    move v4, v10

    .line 635
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 643
    .end local v15           #timeout:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 644
    .local v2, adminTimeout:J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v7, v0

    .line 646
    .local v7, displayTimeout:J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2           #adminTimeout:J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 650
    .local v12, maxTimeout:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f090016

    .line 651
    .local v14, summaryResID:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f090017

    .line 654
    .local v11, immeResID:I
    :goto_4
    aget-object v18, v17, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v5

    if-gez v18, :cond_7

    .line 655
    const-string v18, "SecuritySettings"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v7

    if-gez v18, :cond_6

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 678
    :goto_5
    return-void

    .line 643
    .end local v7           #displayTimeout:J
    .end local v11           #immeResID:I
    .end local v12           #maxTimeout:J
    .end local v14           #summaryResID:I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 646
    .restart local v2       #adminTimeout:J
    .restart local v7       #displayTimeout:J
    :cond_3
    sub-long/2addr v2, v7

    goto :goto_2

    .line 650
    .end local v2           #adminTimeout:J
    .restart local v12       #maxTimeout:J
    :cond_4
    const v14, 0x7f090150

    goto :goto_3

    .line 651
    .restart local v14       #summaryResID:I
    :cond_5
    const v11, 0x7f090b84

    goto :goto_4

    .line 660
    .restart local v11       #immeResID:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/OriginalSettings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 665
    :cond_7
    if-nez v4, :cond_8

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 668
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/OriginalSettings/SecuritySettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v5, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 671
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/OriginalSettings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090582

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090580

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 553
    return-void
.end method


# virtual methods
.method public moveRemoteControls()V
    .locals 11

    .prologue
    const v3, 0x7f0908eb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1029
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 1031
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1033
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1034
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1035
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1037
    const-string v5, "pref_due_date"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1038
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iget-wide v9, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v7, v8, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1040
    if-eqz v1, :cond_0

    if-ge v1, v2, :cond_1

    .line 1041
    :cond_0
    const-class v1, Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0908ef

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1050
    :goto_0
    return-void

    .line 1043
    :cond_1
    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    const-class v1, Lcom/android/OriginalSettings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1047
    :cond_2
    const-class v1, Lcom/android/OriginalSettings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 955
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 956
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 962
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 963
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 964
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 969
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 970
    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 972
    :cond_3
    if-ne p2, v2, :cond_4

    .line 973
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/SecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 979
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 982
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_5

    .line 983
    if-ne p2, v2, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 985
    const-class v1, Lcom/android/OriginalSettings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0908e5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 988
    :cond_5
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 989
    if-ne p2, v2, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->moveRemoteControls()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 556
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 557
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 562
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->isDeviceLockTime:Z

    .line 186
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 188
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 190
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 193
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 199
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 570
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 997
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 998
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1000
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/SecuritySettings;->isInDefaultTimeoutList(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_after_timeout_rollback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1024
    :cond_0
    :goto_2
    return v3

    .line 1003
    :cond_1
    const v0, 0x1b7741

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 1014
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1016
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_signature_verification_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1022
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SecuritySettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1018
    :catch_1
    move-exception v0

    .line 1019
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist signature verification level setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 809
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 810
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    invoke-virtual {p0, p0, v0, v2, v5}, Lcom/android/OriginalSettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 813
    :cond_1
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 814
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 816
    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v5, v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 824
    :cond_2
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 825
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 831
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 832
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 834
    const/16 v4, 0x7d

    invoke-virtual {v2, v4, v5, v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 841
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 844
    :cond_4
    const-string v4, "lockenabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 845
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 846
    :cond_5
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 847
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 848
    :cond_6
    const-string v4, "with_circle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 849
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "with_circle"

    iget-object v4, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 851
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 852
    :cond_8
    const-string v4, "visiblesignature"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 853
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_0

    .line 854
    :cond_9
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 855
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto/16 :goto_0

    .line 856
    :cond_a
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 857
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 858
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 859
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v4, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 861
    :cond_d
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 862
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 863
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 864
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 866
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 868
    :cond_f
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_10

    .line 869
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->showDialog()V

    goto/16 :goto_0

    .line 871
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 873
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->StartPassword()V

    goto/16 :goto_0

    .line 877
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 756
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 760
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 763
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 765
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 770
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 778
    iget-object v4, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "with_circle"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 785
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 787
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 788
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 789
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090d96

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 794
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 795
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 799
    :cond_7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    .line 800
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v3, :cond_8

    .line 801
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v0, v4, :cond_b

    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 803
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 778
    goto :goto_0

    :cond_a
    move v0, v2

    .line 795
    goto :goto_1

    :cond_b
    move v1, v2

    .line 801
    goto :goto_2
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 907
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0, v0, p4}, Lcom/android/OriginalSettings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 912
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 884
    const v0, 0x7f090152

    invoke-static {v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->newInstance(I)Lcom/android/OriginalSettings/OwnerInfoSettings;

    move-result-object v0

    .line 885
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1055
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method
