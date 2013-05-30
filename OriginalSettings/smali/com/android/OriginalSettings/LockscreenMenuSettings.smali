.class public Lcom/android/OriginalSettings/LockscreenMenuSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isDeviceLockTime:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOptions:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private mWithCircle:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const v8, 0x7f090015

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 123
    .local v3, root:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 126
    :cond_0
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, resid:I
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_c

    .line 132
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 133
    const v2, 0x7f07004d

    .line 159
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 162
    const-string v4, "lock_after_timeout"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 163
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    .line 165
    iget-boolean v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 167
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 168
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f0a0008

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 169
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v7, 0x7f0a0009

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 173
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 177
    :cond_2
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 181
    const-string v4, "visiblepattern"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 187
    const v4, 0x7f070049

    if-eq v2, v4, :cond_3

    const v4, 0x7f070054

    if-ne v2, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const/high16 v7, 0x1

    if-eq v4, v7, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    .line 191
    const-string v4, "visiblepattern"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_4
    const-string v4, "with_circle"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v4, "lock_screen_options"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    .line 201
    const-string v4, "quick_note"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 202
    const v4, 0x7f07004d

    if-eq v2, v4, :cond_5

    .line 204
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_5
    const-string v4, "visiblesignature"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 208
    const-string v4, "signature_verification_level"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 209
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v4, :cond_6

    .line 210
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 214
    :cond_6
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_7

    .line 216
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 217
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_10

    .line 223
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_f

    .line 224
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    .line 225
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 226
    .local v0, configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v4, 0x7f090a1e

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 244
    .end local v0           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    .line 245
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_9
    iget-boolean v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_a

    .line 248
    const-string v4, "LockScreenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLockPatternUtils.isSecure(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "is_secured_lock"

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_a
    return-object v3

    .line 135
    :cond_b
    const v2, 0x7f07004a

    goto/16 :goto_0

    .line 137
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 139
    const v2, 0x7f070049

    goto/16 :goto_0

    .line 140
    :cond_d
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 142
    const v2, 0x7f070054

    goto/16 :goto_0

    .line 144
    :cond_e
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 157
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 146
    :sswitch_0
    const v2, 0x7f070050

    .line 147
    goto :goto_3

    .line 149
    :sswitch_1
    const v2, 0x7f070052

    .line 150
    goto :goto_3

    .line 154
    :sswitch_2
    const v2, 0x7f07004f

    goto :goto_3

    .line 229
    :cond_f
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 232
    :cond_10
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_face_with_voice"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, isfacevalue:I
    if-ne v1, v5, :cond_11

    .line 237
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 238
    .restart local v0       #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v4, 0x7f09017d

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 240
    .end local v0           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_11
    const-string v4, "LockScreenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #isfacevalue:I
    :cond_12
    move v4, v6

    .line 249
    goto/16 :goto_2

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 17
    .parameter "maxTimeout"

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 334
    .local v3, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 335
    .local v12, values:[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v7, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v8, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v1, v13

    .line 341
    .local v1, displayTimeout:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v12

    if-ge v4, v13, :cond_1

    .line 342
    aget-object v13, v12, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 343
    .local v9, timeout:J
    cmp-long v13, v9, p1

    if-gtz v13, :cond_0

    .line 344
    aget-object v13, v3, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    aget-object v13, v12, v4

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    .end local v9           #timeout:J
    :cond_1
    const-string v13, "LockScreenMenu"

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

    .line 351
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

    .line 352
    .local v5, last_timeout:J
    const-string v13, "LockScreenMenu"

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

    .line 353
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

    .line 354
    const v13, 0x7f090b85

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 364
    .local v11, userPreference:I
    int-to-long v13, v11

    cmp-long v13, v13, p1

    if-gtz v13, :cond_3

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 374
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 376
    return-void

    .line 367
    :cond_3
    const-string v13, "LockScreenMenu"

    const-string v14, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 374
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    .line 585
    const-wide/16 v5, 0x3e8

    div-long v3, p1, v5

    .line 586
    .local v3, second:J
    const-wide/16 v5, 0x3c

    div-long v0, v3, v5

    .line 587
    .local v0, minute:J
    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    .line 589
    const-string v2, ""

    .line 590
    .local v2, result:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100006

    long-to-int v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 593
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100007

    long-to-int v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    :cond_2
    const-string v5, "LockScreenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v2, 0x0

    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, values:[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 638
    :goto_0
    if-nez v1, :cond_2

    .line 644
    :cond_0
    :goto_1
    return v2

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 640
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 641
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 640
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 516
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 264
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 267
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 269
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 275
    iget-boolean v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0           #adminTimeout:J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 278
    :cond_0
    return-void

    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 266
    goto :goto_0

    .line 275
    .restart local v0       #adminTimeout:J
    .restart local v4       #displayTimeout:J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .parameter "isUpdate"

    .prologue
    const/4 v11, 0x1

    .line 379
    if-nez p1, :cond_0

    .line 380
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0400c3

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 381
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_signature_verification_level"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 387
    .local v1, currentLevel:I
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 389
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 390
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 392
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 393
    .local v0, best:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 394
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 395
    .local v4, level:J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 396
    move v0, v3

    .line 393
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    .end local v4           #level:J
    :cond_2
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
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

    .line 403
    iget-object v8, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f090ba6

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 284
    .local v5, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 285
    .local v9, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 286
    .local v17, values:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 287
    .local v4, best:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 288
    aget-object v18, v17, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 289
    .local v15, timeout:J
    cmp-long v18, v5, v15

    if-ltz v18, :cond_0

    .line 290
    move v4, v10

    .line 287
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 295
    .end local v15           #timeout:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 296
    .local v2, adminTimeout:J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v7, v0

    .line 298
    .local v7, displayTimeout:J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2           #adminTimeout:J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 302
    .local v12, maxTimeout:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f090016

    .line 303
    .local v14, summaryResID:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f090017

    .line 306
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

    .line 307
    const-string v18, "LockScreenMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v7

    if-gez v18, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

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

    invoke-virtual {v0, v11, v1}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    :goto_5
    return-void

    .line 295
    .end local v7           #displayTimeout:J
    .end local v11           #immeResID:I
    .end local v12           #maxTimeout:J
    .end local v14           #summaryResID:I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 298
    .restart local v2       #adminTimeout:J
    .restart local v7       #displayTimeout:J
    :cond_3
    sub-long/2addr v2, v7

    goto :goto_2

    .line 302
    .end local v2           #adminTimeout:J
    .restart local v12       #maxTimeout:J
    :cond_4
    const v14, 0x7f090150

    goto :goto_3

    .line 303
    .restart local v14       #summaryResID:I
    :cond_5
    const v11, 0x7f090b84

    goto :goto_4

    .line 312
    .restart local v11       #immeResID:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 317
    :cond_7
    if-nez v4, :cond_8

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

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

    invoke-virtual {v0, v11, v1}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 320
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v5, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 321
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

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

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 323
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 524
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 525
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 538
    :goto_0
    return-void

    .line 529
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 532
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 533
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 537
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 652
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 114
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 258
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    .line 541
    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 542
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 544
    .local v4, timeout:I
    int-to-long v5, v4

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_after_timeout_rollback"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const-wide/16 v7, 0x7530

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 558
    .local v0, currentScreenTimeout:J
    iget-boolean v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 574
    .end local v0           #currentScreenTimeout:J
    .end local v4           #timeout:I
    :cond_1
    :goto_2
    return v9

    .line 547
    .restart local v4       #timeout:I
    :cond_2
    const v4, 0x1b7741

    goto :goto_0

    .line 553
    :catch_0
    move-exception v2

    .line 554
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 563
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v4           #timeout:I
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 564
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 566
    .local v3, level:I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_signature_verification_level"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 568
    :catch_1
    move-exception v2

    .line 569
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist signature verification level setting"

    invoke-static {v5, v6, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 446
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 449
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 450
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 507
    :cond_0
    :goto_0
    return v4

    .line 452
    :cond_1
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 455
    .local v0, helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 463
    .end local v0           #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    :cond_2
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 464
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 471
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 473
    .restart local v0       #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 479
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 480
    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 483
    .end local v0           #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    :cond_4
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 484
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 485
    :cond_5
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 486
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 487
    :cond_6
    const-string v5, "with_circle"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "with_circle"

    iget-object v7, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    iget-object v3, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 491
    :cond_8
    const-string v5, "quick_note"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 492
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_quick_note"

    iget-object v7, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 493
    :cond_a
    const-string v3, "visiblesignature"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 494
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_0

    .line 495
    :cond_b
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 496
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto/16 :goto_0

    .line 497
    :cond_c
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 498
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 499
    :cond_d
    const-string v3, "owner_info_settings"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_e

    .line 500
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_0

    .line 504
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 412
    invoke-direct {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 414
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 415
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 423
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "with_circle"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 424
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 433
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 435
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 436
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 438
    iget-object v1, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090d96

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 442
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 423
    goto :goto_0

    :cond_8
    move v2, v3

    .line 427
    goto :goto_1
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 611
    iput-object v5, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 615
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04009e

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 616
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b01a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 617
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 619
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 620
    const v4, 0x7f09042d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 621
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 624
    iget-object v4, p0, Lcom/android/OriginalSettings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 625
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 511
    const v1, 0x7f090152

    invoke-static {v1}, Lcom/android/OriginalSettings/OwnerInfoSettings;->newInstance(I)Lcom/android/OriginalSettings/OwnerInfoSettings;

    move-result-object v0

    .line 512
    .local v0, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 581
    return-void
.end method
