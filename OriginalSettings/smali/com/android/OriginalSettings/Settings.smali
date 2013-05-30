.class public Lcom/android/OriginalSettings/Settings;
.super Lmiui/preference/BasePreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/OriginalSettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$NfcSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SamsungCloudSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CloudSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DormantmodeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$EasyModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PenSettingsMenuActivity;,
        Lcom/android/OriginalSettings/Settings$PenSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/OriginalSettings/Settings$AllShareCastSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DualClockSettingActivity;,
        Lcom/android/OriginalSettings/Settings$SBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$NearbySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$RunningServicesActivity;,
        Lcom/android/OriginalSettings/Settings$DockSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PrivacySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocationSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SecuritySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageUseActivity;,
        Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LockScreenSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LockscreenMenuActivity;,
        Lcom/android/OriginalSettings/Settings$DisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoundSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocalePickerActivity;,
        Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/OriginalSettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiApSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$VpnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WirelessSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableUserManagement:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTetheredData:I

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 123
    iput v1, p0, Lcom/android/OriginalSettings/Settings;->MHS_REQUEST:I

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 143
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    .line 144
    iput v1, p0, Lcom/android/OriginalSettings/Settings;->mTetheredData:I

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 1309
    return-void

    .line 133
    :array_0
    .array-data 0x4
        0x76t 0x3t 0xbt 0x7ft
        0x79t 0x3t 0xbt 0x7ft
        0x80t 0x3t 0xbt 0x7ft
        0x81t 0x3t 0xbt 0x7ft
        0x8et 0x3t 0xbt 0x7ft
        0x94t 0x3t 0xbt 0x7ft
        0xa1t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 3

    .prologue
    .line 754
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    .line 758
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 761
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 762
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_0

    .line 764
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 765
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 766
    if-eqz v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 365
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 367
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 370
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f090770

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 667
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 668
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_8

    aget-object v8, v5, v4

    .line 670
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 673
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 674
    const-string v3, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 675
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 680
    :goto_1
    if-nez v3, :cond_1

    .line 669
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 684
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 685
    array-length v0, v9

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 689
    :goto_3
    array-length v10, v9

    if-lez v10, :cond_3

    const-string v10, "com.facebook.auth.login"

    aget-object v11, v9, v2

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 690
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v10, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    array-length v0, v0

    if-gtz v0, :cond_0

    :cond_2
    move v0, v2

    .line 699
    :cond_3
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 700
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 701
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_4

    .line 702
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 704
    :cond_4
    if-eqz v0, :cond_7

    .line 705
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 706
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 707
    const-class v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 710
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 712
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    :cond_5
    :goto_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v0, v2

    .line 685
    goto :goto_3

    .line 715
    :cond_7
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 716
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 717
    const-class v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 719
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_5

    .line 723
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 731
    :cond_8
    new-instance v0, Lcom/android/OriginalSettings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/Settings$2;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 738
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 739
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_5

    .line 741
    :cond_9
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_a

    .line 742
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 743
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    .line 745
    :cond_a
    return p2

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private isOrangeCustomer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1242
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1245
    :cond_1
    const-string v1, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 276
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 318
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 321
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 323
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 324
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 326
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 327
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 328
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 329
    iput-object v4, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 331
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 332
    iget v7, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 334
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 335
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 337
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v3

    .line 340
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 478
    const/4 v3, 0x0

    .line 479
    .local v3, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_21

    .line 480
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 482
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v9, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v9

    .line 483
    .local v4, id:I
    const v9, 0x7f0b038d

    if-ne v4, v9, :cond_4

    .line 484
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shopdemo"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 485
    .local v8, shop:I
    if-ne v8, v13, :cond_1

    .line 486
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    .end local v8           #shop:I
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v9, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 643
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_2
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    .line 656
    iget-object v9, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v9, :cond_3

    invoke-static {v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 658
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 660
    :cond_3
    iget-object v9, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    :cond_4
    const v9, 0x7f0b039a

    if-ne v4, v9, :cond_5

    .line 488
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->needsDockSettings()Z

    move-result v9

    if-nez v9, :cond_1

    .line 489
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 490
    :cond_5
    const v9, 0x7f0b037c

    if-eq v4, v9, :cond_6

    const v9, 0x7f0b0389

    if-ne v4, v9, :cond_7

    .line 491
    :cond_6
    invoke-static {p0, p1, v1}, Lcom/android/OriginalSettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 492
    :cond_7
    const v9, 0x7f0b0376

    if-ne v4, v9, :cond_8

    .line 494
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.wifi"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 495
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_8
    const v9, 0x7f0b0377

    if-ne v4, v9, :cond_9

    .line 501
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :cond_9
    const v9, 0x7f0b0378

    if-ne v4, v9, :cond_a

    .line 515
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_a
    const v9, 0x7f0b037b

    if-ne v4, v9, :cond_b

    .line 519
    const-string v9, "LGT"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 520
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 522
    :cond_b
    const v9, 0x7f0b0379

    if-ne v4, v9, :cond_c

    .line 524
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.bluetooth"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 525
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 527
    :cond_c
    const v9, 0x7f0b0382

    if-ne v4, v9, :cond_d

    .line 528
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 530
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 532
    :cond_d
    const v9, 0x7f0b037a

    if-ne v4, v9, :cond_e

    .line 534
    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 537
    .local v6, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 538
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 540
    :catch_0
    move-exception v9

    goto/16 :goto_1

    .line 543
    .end local v6           #netManager:Landroid/os/INetworkManagementService;
    :cond_e
    const v9, 0x7f0b0397

    if-eq v4, v9, :cond_1

    .line 547
    const v9, 0x7f0b037e

    if-ne v4, v9, :cond_f

    .line 548
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 549
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 551
    :cond_f
    const v9, 0x7f0b0384

    if-eq v4, v9, :cond_1

    .line 555
    const v9, 0x7f0b0395

    if-ne v4, v9, :cond_10

    .line 557
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 559
    :cond_10
    const v9, 0x7f0b0385

    if-ne v4, v9, :cond_11

    .line 561
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 563
    :cond_11
    const v9, 0x7f0b0394

    if-ne v4, v9, :cond_12

    .line 564
    add-int/lit8 v2, v3, 0x1

    .line 565
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 566
    goto/16 :goto_1

    .end local v2           #headerIndex:I
    :cond_12
    const v9, 0x7f0b0398

    if-ne v4, v9, :cond_13

    .line 568
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 570
    :cond_13
    const v9, 0x7f0b0399

    if-ne v4, v9, :cond_14

    .line 572
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 574
    :cond_14
    const v9, 0x7f0b038f

    if-ne v4, v9, :cond_15

    .line 576
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 578
    :cond_15
    const v9, 0x7f0b038b

    if-ne v4, v9, :cond_17

    .line 579
    iget-boolean v9, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    if-eqz v9, :cond_16

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v9

    if-nez v9, :cond_16

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 583
    :cond_16
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 585
    :cond_17
    const v9, 0x7f0b0391

    if-ne v4, v9, :cond_18

    .line 590
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 592
    :cond_18
    const v9, 0x7f0b0392

    if-ne v4, v9, :cond_19

    .line 597
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 599
    :cond_19
    const v9, 0x7f0b03a0

    if-ne v4, v9, :cond_1a

    .line 600
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, salesCode:Ljava/lang/String;
    const-string v9, "SPR"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "BST"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 604
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 606
    .end local v7           #salesCode:Ljava/lang/String;
    :cond_1a
    const v9, 0x7f0b039f

    if-ne v4, v9, :cond_1b

    .line 607
    const/4 v5, 0x1

    .line 609
    .local v5, isSprintDsa:Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sprint.dsa"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :goto_3
    if-nez v5, :cond_1

    .line 616
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 610
    :catch_1
    move-exception v0

    .line 611
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_3

    .line 618
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #isSprintDsa:Z
    :cond_1b
    const v9, 0x7f0b038a

    if-ne v4, v9, :cond_1d

    .line 619
    const-string v9, "DCM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 620
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 624
    :cond_1c
    :try_start_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.nttdocomo.android.docomoset"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 625
    :catch_2
    move-exception v0

    .line 626
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 629
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d
    const v9, 0x7f0b039d

    if-ne v4, v9, :cond_1e

    .line 631
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 632
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 634
    :cond_1e
    const v9, 0x7f0b039e

    if-ne v4, v9, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->isOrangeCustomer()Z

    move-result v9

    if-nez v9, :cond_1

    .line 637
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 644
    :cond_1f
    const v9, 0x7f0b0388

    if-ne v4, v9, :cond_20

    .line 645
    const-string v9, "VZW"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 646
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 647
    :cond_20
    const v9, 0x7f0b037f

    if-ne v4, v9, :cond_2

    goto/16 :goto_2

    .line 664
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_21
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1192
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    .line 1198
    if-eqz v0, :cond_2

    .line 1200
    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1204
    :goto_0
    return v0

    .line 1200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1204
    :cond_2
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1175
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    .line 1181
    if-eqz v0, :cond_2

    .line 1182
    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1186
    :goto_0
    return v0

    .line 1182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1186
    :cond_2
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 374
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 375
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 379
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 380
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 387
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 391
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 385
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 391
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 782
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :cond_2
    const-string v1, "com.android.OriginalSettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 777
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 1168
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    const-string v0, "WifiAp_Settings"

    const-string v1, "Settings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-nez p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 789
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 790
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 791
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 1227
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1230
    instance-of v0, p1, Lcom/android/OriginalSettings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/OriginalSettings/Settings;)V

    .line 1237
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f070056

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 474
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 475
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 436
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/BasePreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 440
    const-class v0, Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    :cond_1
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v2, "settings:guide_mode"

    const-class v0, Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wifi"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    :cond_2
    const-class v0, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 464
    return-object v1

    .line 456
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bt"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multiuser_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    iput-boolean v5, p0, Lcom/android/OriginalSettings/Settings;->mEnableUserManagement:Z

    .line 165
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v4}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 178
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->getMetaData()V

    .line 179
    iput-boolean v5, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 180
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    iput-boolean v3, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget v0, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 193
    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/Settings;->setTitle(I)V

    .line 197
    :cond_2
    if-eqz p1, :cond_3

    .line 198
    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 203
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lcom/android/OriginalSettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/OriginalSettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$1;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/OriginalSettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 221
    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 267
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 422
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 423
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 425
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 426
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 430
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, revert:Z
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0396

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1127
    const/4 v0, 0x1

    .line 1130
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1132
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1210
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1213
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->finish()V

    .line 1219
    const/4 v0, 0x1

    .line 1222
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 347
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 357
    :cond_0
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 258
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 259
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->pause()V

    .line 262
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1142
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1143
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    const v3, 0x7f090430

    .line 1146
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/OriginalSettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1148
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 247
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 248
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->resume()V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 252
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1157
    if-nez p1, :cond_0

    .line 1158
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lmiui/preference/BasePreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1162
    :goto_0
    return-void

    .line 1160
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Lmiui/preference/BasePreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lmiui/preference/BasePreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 281
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 282
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 285
    return-void
.end method
