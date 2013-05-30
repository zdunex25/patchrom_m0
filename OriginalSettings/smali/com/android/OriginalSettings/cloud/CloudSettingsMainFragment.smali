.class public Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isDropboxAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsConnected:Z

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

.field private mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 56
    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 143
    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 148
    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    .line 153
    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 624
    new-instance v0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Lcom/android/OriginalSettings/cloud/CloudSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;Lcom/android/OriginalSettings/cloud/CloudSettings;)Lcom/android/OriginalSettings/cloud/CloudSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/OriginalSettings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V

    return-void
.end method

.method private addSamsungAccount()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 225
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 243
    :cond_0
    return-void
.end method

.method private getPreferencesReference()V
    .locals 5

    .prologue
    .line 267
    const-string v1, "category_samsungservices"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 268
    const-string v1, "category_dropbox"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 269
    const-string v1, "pref_add_samsung_account"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    .line 270
    const-string v1, "pref_dataSync"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 271
    const-string v1, "pref_backUp"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 272
    const-string v1, "samsung_account"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    .line 273
    const-string v1, "dropbox_sync_account"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    .line 274
    const-string v1, "pref_set_account"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 275
    const-string v1, "pref_usage"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 276
    const-string v1, "pref_photos"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 277
    const-string v1, "pref_videos"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 278
    const-string v1, "pref_wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 280
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 286
    const v1, 0x7f090d78

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f090d7c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, categoryText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.cloudagent"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 198
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 200
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 643
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 646
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 647
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 649
    .local v3, wifiNetwork:Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 651
    .local v2, mobileNetwork:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 653
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    .end local v0           #activeNetwork:Landroid/net/NetworkInfo;
    .end local v2           #mobileNetwork:Landroid/net/NetworkInfo;
    .end local v3           #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 655
    .restart local v0       #activeNetwork:Landroid/net/NetworkInfo;
    .restart local v2       #mobileNetwork:Landroid/net/NetworkInfo;
    .restart local v3       #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 657
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0           #activeNetwork:Landroid/net/NetworkInfo;
    .end local v2           #mobileNetwork:Landroid/net/NetworkInfo;
    .end local v3           #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 662
    goto :goto_0
.end method

.method private onBackUpClicked()V
    .locals 4

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v0, mIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 578
    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    .line 579
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 580
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090770

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 586
    :cond_0
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 402
    iget-boolean v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    invoke-static {v3, v4, v4}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;)Lcom/android/OriginalSettings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 411
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    .prologue
    .line 419
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method private requestDropboxAuth()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.cloudagent.DROPBOX_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "storageVender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v1, "requestSignIn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 210
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 211
    array-length v1, v0

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .parameter "pref"
    .parameter "preferenceGroup"
    .parameter "isShow"

    .prologue
    .line 388
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 389
    if-eqz p3, :cond_1

    .line 390
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 671
    .line 672
    const/4 v3, 0x0

    .line 674
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 688
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 693
    :cond_0
    return-void

    .line 676
    :pswitch_0
    const-class v0, Lcom/android/OriginalSettings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 678
    const v3, 0x7f090d7e

    .line 679
    goto :goto_0

    .line 681
    :pswitch_1
    const-class v0, Lcom/android/OriginalSettings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 682
    const v3, 0x7f090d7f

    .line 683
    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 697
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 704
    return-void
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    return-void
.end method

.method private updatePreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 313
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 320
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 322
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    .end local v0           #samsungAccount:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 328
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 329
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 330
    iget-object v1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 593
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 617
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 619
    return-void

    .line 596
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 597
    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 611
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 165
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->init()V

    .line 167
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d8b

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    .line 172
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 260
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 261
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 187
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 188
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f090770

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->addSamsungAccount()V

    .line 557
    :cond_0
    :goto_0
    return v6

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 526
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 528
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 530
    array-length v0, v4

    if-lez v0, :cond_0

    .line 531
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 532
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 537
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/OriginalSettings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 539
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 541
    array-length v0, v4

    if-lez v0, :cond_0

    .line 542
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 543
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 548
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v1, "wifiOnly"

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSettingsMainFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 177
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 179
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 180
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    .line 182
    :cond_0
    return-void
.end method
