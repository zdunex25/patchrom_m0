.class Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 114
    new-instance v0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFacebookSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 8
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 179
    const-string v4, "com.sec.android.app.sns3"

    .line 180
    .local v4, facebookSSORetryPackage:Ljava/lang/String;
    const-string v3, "com.sec.android.app.sns3.auth.sp.facebook.SnsAccountFbAuthSSOActivity"

    .line 182
    .local v3, facebookSSORetryCls:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.facebook.auth.login"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 184
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 187
    .local v1, accounts2:[Landroid/accounts/Account;
    array-length v6, v0

    if-lez v6, :cond_0

    array-length v6, v1

    if-nez v6, :cond_0

    .line 189
    const-string v6, "AccountSettings"

    const-string v7, "Facebook SSO is Failed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 192
    .local v2, facebookSSORetry:Landroid/preference/PreferenceScreen;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v5, mIntent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 194
    const-string v6, "facebookSSORetry"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 195
    const v6, 0x7f090d52

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const v6, 0x7f090d53

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 200
    .end local v2           #facebookSSORetry:Landroid/preference/PreferenceScreen;
    .end local v5           #mIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 8
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 151
    const-string v4, "com.sec.android.sCloudBackupApp"

    .line 154
    .local v4, samsungbackupPackage:Ljava/lang/String;
    const/4 v2, 0x0

    .line 155
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    const-string v5, "AccountSettings"

    const-string v6, "Samsung Backup is Installed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 160
    .local v3, samsungBackup:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v1, mIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.sCloudBackupApp"

    const-string v7, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const-string v5, "samsungbackup"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 163
    const v5, 0x7f090cba

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v3           #samsungBackup:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 169
    const-string v5, "AccountSettings"

    const-string v6, "Samsung Backup is NOT Installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 17
    .parameter "accountType"
    .parameter "parent"

    .prologue
    .line 209
    const/4 v11, 0x0

    .line 210
    .local v11, prefs:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 211
    const/4 v6, 0x0

    .line 213
    .local v6, desc:Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 214
    .local v2, addFacebookSSO:Z
    :try_start_0
    const-string v13, "com.facebook.auth.login"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    const-string v14, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v13, v14}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    .line 216
    const/4 v2, 0x1

    .line 221
    :goto_0
    if-eqz v6, :cond_2

    iget v13, v6, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v13, :cond_2

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v14, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 225
    .local v3, authContext:Landroid/content/Context;
    const/4 v9, 0x1

    .line 226
    .local v9, isMatch:Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v10, preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v13

    iget v14, v6, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v13, v3, v14, v15}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 230
    .local v4, authPrefScreen:Landroid/preference/PreferenceScreen;
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    .local v5, count:I
    :goto_1
    if-ge v8, v5, :cond_5

    .line 231
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 232
    .local v1, accountPref:Landroid/preference/Preference;
    instance-of v13, v1, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_1

    .line 233
    new-instance v12, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    .local v12, tmpPref:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v12           #tmpPref:Landroid/preference/PreferenceCategory;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 218
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v3           #authContext:Landroid/content/Context;
    .end local v4           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #isMatch:Z
    .end local v10           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    goto :goto_0

    .line 236
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v3       #authContext:Landroid/content/Context;
    .restart local v4       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v9       #isMatch:Z
    .restart local v10       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_1
    instance-of v13, v1, Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    .line 237
    new-instance v12, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    .local v12, tmpPref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 275
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v3           #authContext:Landroid/content/Context;
    .end local v4           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #isMatch:Z
    .end local v10           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #tmpPref:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v7

    .line 276
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v2           #addFacebookSSO:Z
    .end local v6           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_3
    return-object v11

    .line 243
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v2       #addFacebookSSO:Z
    .restart local v3       #authContext:Landroid/content/Context;
    .restart local v4       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v5       #count:I
    .restart local v6       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v8       #i:I
    .restart local v9       #isMatch:Z
    .restart local v10       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_3
    :try_start_1
    instance-of v13, v1, Landroid/preference/Preference;

    if-eqz v13, :cond_4

    .line 244
    new-instance v12, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    .local v12, tmpPref:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 277
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v3           #authContext:Landroid/content/Context;
    .end local v4           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #isMatch:Z
    .end local v10           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #tmpPref:Landroid/preference/Preference;
    :catch_1
    move-exception v7

    .line 278
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 251
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v3       #authContext:Landroid/content/Context;
    .restart local v4       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v9       #isMatch:Z
    .restart local v10       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 255
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_5
    const/4 v13, 0x1

    if-ne v9, v13, :cond_6

    .line 256
    move-object/from16 v11, p2

    .line 257
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v8, v5, :cond_6

    .line 258
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 259
    .restart local v1       #accountPref:Landroid/preference/Preference;
    invoke-virtual {v11, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 265
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_6
    const-string v13, "com.osp.app.signin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 266
    const-string v13, "AccountSettings"

    const-string v14, "Accoun type is SSO"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 271
    :cond_7
    if-eqz v2, :cond_2

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->addFacebookSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v5, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 126
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 127
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 128
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 129
    aget-object v3, v4, v1

    .line 130
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 71
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 94
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 95
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 100
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 106
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 287
    return-void
.end method
