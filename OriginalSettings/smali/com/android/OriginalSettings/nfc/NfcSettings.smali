.class public Lcom/android/OriginalSettings/nfc/NfcSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field private mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 52
    const-string v3, "NFC_SETTING"

    const-string v4, "onActivityCreated"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 54
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 56
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 58
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 62
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 72
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    const-string v3, "toggle_android_beam"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 73
    .local v0, aBeam:Landroid/preference/SwitchPreferenceScreen;
    new-instance v3, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    iget-object v4, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 75
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->pause()V

    .line 84
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->resume()V

    .line 92
    :cond_0
    return-void
.end method
