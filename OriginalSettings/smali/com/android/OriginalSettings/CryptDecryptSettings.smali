.class public Lcom/android/OriginalSettings/CryptDecryptSettings;
.super Landroid/app/Fragment;
.source "CryptDecryptSettings.java"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mParent:Landroid/app/Activity;

.field private mPowerWarning:Landroid/view/View;

.field private mSDcardOngoingWarning:Landroid/view/View;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 76
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 78
    new-instance v0, Lcom/android/OriginalSettings/CryptDecryptSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptDecryptSettings$1;-><init>(Lcom/android/OriginalSettings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/android/OriginalSettings/CryptDecryptSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptDecryptSettings$2;-><init>(Lcom/android/OriginalSettings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/CryptDecryptSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 193
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 194
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 199
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f090502

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f090503

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 225
    const-class v0, Lcom/android/OriginalSettings/CryptDecryptConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 226
    const v0, 0x7f090928

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 227
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/preference/BasePreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 229
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 177
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 183
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 216
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    .line 126
    const-string v0, "CryptDecrypt"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 131
    const v0, 0x7f04002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;

    .line 143
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 149
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method
