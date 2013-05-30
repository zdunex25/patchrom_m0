.class public Lcom/android/OriginalSettings/DrivingModeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DrivingModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->updateState()V

    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    .local v2, mPm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 268
    .local v1, info_1:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DrivingModeSettings"

    const-string v4, "Package name is not found"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 188
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 190
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_incoming_call_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 245
    .local v2, incomingcall:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_message_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 246
    .local v3, message:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_email_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, email:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_voice_mail_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 248
    .local v6, voicemail:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_alarm_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, alarm:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_schedule_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 250
    .local v4, schedule:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_unlock_screen_contents"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 251
    .local v5, unlockscreen:I
    const-string v8, "DrivingModeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 253
    const/4 v7, 0x1

    .line 255
    :cond_0
    return v7
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 107
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 108
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 109
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f09086d

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 123
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    const-string v1, "DrivingModeSettings"

    const-string v4, "onCheckChanged"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 135
    const-string v1, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    const-string v1, "DrivingModeSettings"

    const-string v2, "Driving mode changed broadcast"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 130
    goto :goto_0

    .line 137
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "DrivingMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->addPreferencesFromResource(I)V

    .line 72
    const-string v2, "incoming_call_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v2, "message_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v2, "email_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v2, "voice_mail_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v2, "alarm_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v2, "schedule_notification"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v2, "unlock_screen_contents"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_2
    const-string v0, "com.sec.android.app.clockpackage"

    .line 94
    .local v0, mSamsungClockPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, packag_label:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-nez v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 202
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;->stopObserving()V

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    .line 206
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 240
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_email_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_alarm_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 228
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_schedule_notification"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_7

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_8
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_8

    .line 238
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->updateState()V

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 155
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_message_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_email_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_schedule_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    sget-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    if-nez v0, :cond_4

    .line 179
    new-instance v0, Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;-><init>(Lcom/android/OriginalSettings/DrivingModeSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    .line 180
    sget-object v0, Lcom/android/OriginalSettings/DrivingModeSettings;->sSettingsObserver:Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DrivingModeSettings$SettingsObserver;->startObserving()V

    .line 183
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 150
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 155
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 159
    goto :goto_2

    :cond_8
    move v0, v2

    .line 163
    goto :goto_3

    :cond_9
    move v0, v2

    .line 168
    goto :goto_4

    :cond_a
    move v0, v2

    .line 172
    goto :goto_5

    :cond_b
    move v1, v2

    .line 175
    goto :goto_6
.end method
