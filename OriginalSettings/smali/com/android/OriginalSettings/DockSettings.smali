.class public Lcom/android/OriginalSettings/DockSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioApplications:Landroid/preference/CheckBoxPreference;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAudioSettings:Landroid/preference/Preference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mHdmiCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/android/OriginalSettings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DockSettings$1;-><init>(Lcom/android/OriginalSettings/DockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DockSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 211
    const-string v0, "sys/class/sec/switch/adc"

    .line 212
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 213
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 214
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 217
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 219
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 220
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 228
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_0
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 230
    const/4 v7, 0x1

    .line 232
    :cond_0
    return v7

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "DockSettings"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 225
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 222
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09041e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 364
    const v1, 0x7f09041f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 365
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 237
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 241
    .local v1, isBluetooth:Z
    :goto_0
    if-nez v1, :cond_2

    .line 243
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f09041d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 266
    :goto_1
    if-eqz v0, :cond_0

    .line 269
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v4

    .line 239
    goto :goto_0

    .line 246
    .restart local v1       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 248
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 249
    const v2, 0x7f09041d

    .line 250
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 252
    :pswitch_0
    const v2, 0x7f09041b

    .line 253
    goto :goto_3

    .line 257
    :pswitch_1
    const v2, 0x7f09041a

    .line 258
    goto :goto_3

    .line 260
    :pswitch_2
    const v2, 0x7f09041c

    goto :goto_3

    .line 270
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v1, 0x7f09041c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 164
    :cond_0
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    const-string v0, "cradle_enable"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_1
    const-string v0, "desk_home_screen_display"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->needsDockSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :goto_1
    const-string v0, "hdmi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    .line 187
    const-string v0, "audio_output"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string v0, "audio_applications"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 205
    :goto_2
    return-void

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_settings"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "earset"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_applications"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->initDockSettings()V

    .line 107
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 355
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, key:Ljava/lang/String;
    const-string v2, "audio_output"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 346
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_audio_output"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 281
    :cond_0
    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->showDialog(I)V

    .line 339
    :goto_0
    return v1

    .line 284
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 285
    const-string v2, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 297
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cradle_enable"

    if-eqz v3, :cond_6

    move v2, v1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cradle_connect"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    const-string v2, "DockSettings"

    const-string v4, "Cradle is connected:"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 303
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->checkSmartDockType()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 304
    const-string v4, "smartdock"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :goto_2
    if-eqz v3, :cond_5

    move v0, v1

    .line 314
    :cond_5
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    const-string v2, "DockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v2, v0

    .line 298
    goto :goto_1

    .line 307
    :cond_7
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 318
    :cond_8
    const-string v2, "DockSettings"

    const-string v3, "Cradle is not connected:"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 320
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->checkSmartDockType()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 321
    const-string v3, "smartdock"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const-string v3, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :goto_3
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    const-string v2, "DockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    :cond_9
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 331
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 332
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "desk_home_screen_display"

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 334
    :cond_c
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 335
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_applications"

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 339
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 111
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 118
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_sounds_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v6, "cradle_enable"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    const-string v6, "desk_home_screen_display"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    const-string v6, "hdmi_audio_output"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 123
    .local v3, mHdmiValue:I
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v9, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    const-string v6, "audio_applications"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 130
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v6, "audioParam;outDevice"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, isHDMI:Z
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 137
    :cond_0
    :goto_4
    const-string v6, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isHDMI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v2, :cond_8

    .line 140
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 142
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 143
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 149
    :goto_5
    return-void

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #isHDMI:Z
    .end local v3           #mHdmiValue:I
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 118
    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 119
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 120
    goto/16 :goto_2

    .restart local v3       #mHdmiValue:I
    :cond_5
    move v6, v8

    .line 126
    goto :goto_3

    .line 135
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #isHDMI:Z
    .restart local v4       #path:Ljava/lang/String;
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_7

    move v2, v8

    :goto_6
    goto :goto_4

    :cond_7
    move v2, v7

    goto :goto_6

    .line 145
    :cond_8
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 146
    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5
.end method
