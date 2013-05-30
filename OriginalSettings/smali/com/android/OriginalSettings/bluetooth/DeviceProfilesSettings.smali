.class public final Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

.field private mNameEditedButtonEnabled:Z

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    return p1
.end method

.method private addPreferencesForProfiles()V
    .locals 5

    .prologue
    .line 228
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 230
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-ne v3, v4, :cond_0

    .line 231
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "addPreferencesForProfiles::PAN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;

    move-result-object v1

    .line 233
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 235
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 236
    .restart local v1       #pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 239
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 240
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 368
    .local v0, device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    const v6, 0x7f0900a6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f09009b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f09009c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    .line 393
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/OriginalSettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 395
    return-void
.end method

.method private createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 262
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 265
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 266
    invoke-interface {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 267
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 270
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    invoke-direct {p0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 281
    return-object v1
.end method

.method private createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 290
    .local v1, pref:Landroid/preference/Preference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 293
    invoke-interface {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 294
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 297
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 306
    invoke-direct {p0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 308
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 464
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-eq v3, v4, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v2

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    .line 349
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 351
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 352
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 355
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 362
    :goto_1
    return-void

    .line 352
    .end local v1           #isConnected:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PAN"

    if-eq v4, v5, :cond_2

    .line 359
    invoke-interface {p1, v0, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 407
    return-void
.end method

.method private refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 448
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 449
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 450
    invoke-interface {p2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 451
    return-void

    .line 448
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 459
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 460
    invoke-interface {p2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 461
    return-void

    .line 459
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 410
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 412
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN"

    if-ne v3, v4, :cond_1

    .line 413
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 414
    .local v2, profilePref:Landroid/preference/Preference;
    if-nez v2, :cond_0

    .line 415
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/Preference;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/Preference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 421
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 422
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_2

    .line 423
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfileCheckBoxPreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 426
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfileCheckBoxPreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 430
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 431
    .restart local v1       #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 432
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_4

    .line 433
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 437
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 438
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 244
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 483
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 122
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "remote_device_rename_edited"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 128
    :goto_0
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 130
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 131
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 132
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 134
    if-nez v1, :cond_1

    .line 135
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 158
    :goto_1
    return-void

    .line 124
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 139
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 141
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 143
    .local v2, deviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 144
    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 145
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    .line 146
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, deviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 168
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 399
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 224
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 337
    .restart local p2
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 339
    .local v0, prof:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 313
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, key:Ljava/lang/String;
    const-string v4, "unpair"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 317
    const/4 v4, 0x1

    .line 331
    :goto_0
    return v4

    .line 318
    :cond_0
    const-string v4, "rename_device"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    .line 321
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 322
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 323
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 324
    .local v0, b:Landroid/widget/Button;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    .end local v0           #b:Landroid/widget/Button;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 326
    :cond_2
    const-string v4, "PAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    .line 328
    .local v3, prof:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 11

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 185
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 186
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 187
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    .line 188
    const-string v8, "DeviceProfilesSettings"

    const-string v9, "onResume() bond state is BOND_NONE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 196
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    .line 198
    .local v4, et:Landroid/widget/EditText;
    if-eqz v4, :cond_3

    .line 199
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 201
    .local v1, d:Landroid/app/Dialog;
    instance-of v8, v1, Landroid/app/AlertDialog;

    if-eqz v8, :cond_3

    .line 202
    const/4 v7, 0x0

    .line 203
    .local v7, spaceNum:I
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v6

    .line 204
    .local v6, length:I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, deviceName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 207
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 206
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #et:Landroid/widget/EditText;
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #spaceNum:I
    :catch_0
    move-exception v3

    .line 192
    .local v3, e:Ljava/lang/IllegalStateException;
    const-string v8, "DeviceProfilesSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResume() catch IllegalStateException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v3           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #d:Landroid/app/Dialog;
    .restart local v2       #deviceName:Ljava/lang/String;
    .restart local v4       #et:Landroid/widget/EditText;
    .restart local v5       #i:I
    .restart local v6       #length:I
    .restart local v7       #spaceNum:I
    :cond_2
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 214
    .local v0, b:Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #spaceNum:I
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "mCachedDevice is null during saving"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    const-string v0, "remote_device_rename_edited"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
