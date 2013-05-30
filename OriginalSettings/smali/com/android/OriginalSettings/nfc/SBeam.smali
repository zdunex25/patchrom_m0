.class public Lcom/android/OriginalSettings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNeedRecreateActivity:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqNfcTurnOn:Z

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 71
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    .line 72
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 73
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 75
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 76
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNeedRecreateActivity:Z

    .line 79
    new-instance v0, Lcom/android/OriginalSettings/nfc/SBeam$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nfc/SBeam$1;-><init>(Lcom/android/OriginalSettings/nfc/SBeam;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nfc/SBeam;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/SBeam;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeam.handleNfcStateChanged > state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_1

    .line 250
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 259
    :cond_2
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 264
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNeedRecreateActivity:Z

    if-eqz v0, :cond_0

    .line 265
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNeedRecreateActivity:Z

    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initSharedPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private isOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    :cond_0
    return v0
.end method

.method private setOn(Z)V
    .locals 7
    .parameter "bOn"

    .prologue
    const v6, 0x7f090210

    const/16 v5, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 203
    if-eqz p1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sbeam_last_status"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 213
    .local v0, nState:I
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeam.setOn :  state > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x5

    if-ne v1, v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    .line 217
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 219
    :cond_2
    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    const/4 v1, 0x2

    if-eq v1, v0, :cond_3

    .line 220
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    .line 222
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    .line 231
    .end local v0           #nState:I
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sbeam_last_status"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 175
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/nfc/SBeam;->setOn(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNeedRecreateActivity:Z

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 107
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 114
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 118
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 119
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 125
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090209

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 129
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 132
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_2

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/nfc/SBeam;->initSharedPreference()V

    .line 138
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 139
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/OriginalSettings/nfc/SBeam;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 148
    const v3, 0x7f0400c9

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0238

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    .local v1, imgView:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    const/high16 v3, 0x7f05

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 154
    .local v0, frameAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 156
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/OriginalSettings/nfc/SBeam;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
