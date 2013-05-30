.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;
.super Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mLocalAdapterNameTemp:Ljava/lang/String;

.field private static mNewOrientation:I

.field private static mOldOrientation:I


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mBluetoothScanItem:Landroid/preference/Preference;

.field private mButtonView:Landroid/widget/TextView;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMyDeviceCategory:Landroid/preference/PreferenceCategory;

.field mMyDevicePreference:Landroid/preference/CheckBoxPreference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScan:Landroid/view/MenuItem;

.field private mShowVisibileTimeoutFragment:Z

.field private mTimeOutFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 114
    sput-object v1, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    .line 117
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 613
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 141
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    return-object p1
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 433
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 435
    invoke-virtual {p0, p3}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 439
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 443
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 444
    .local v0, messageId:I
    const-string v4, "BluetoothSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scanState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    packed-switch p1, :pswitch_data_0

    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 589
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 590
    sget-boolean v4, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v4, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 592
    :cond_1
    :goto_1
    return-void

    .line 448
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 449
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 450
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 453
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_2

    .line 454
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f0901b0

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 457
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 458
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 459
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 462
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_3

    .line 464
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 467
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    .line 468
    sget-object v4, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 469
    sget-object v4, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    sput-object v4, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 470
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110029

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 476
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0200ce

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 480
    :goto_3
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 481
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 484
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_4

    .line 485
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    iget-object v9, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v7, v8, v9}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 487
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v7}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 493
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_9

    .line 494
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 498
    :goto_4
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0901ca

    sget-object v8, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 501
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 505
    .local v2, numberOfPairedDevices:I
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 506
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 513
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_c

    .line 514
    new-instance v4, Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/OriginalSettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 518
    :goto_7
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0901cb

    sget-object v8, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 521
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 522
    .local v1, numberOfAvailableDevices:I
    iput-boolean v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 524
    if-nez v1, :cond_d

    .line 525
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    iput-boolean v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 531
    :goto_8
    if-nez v2, :cond_5

    .line 532
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    if-ne p2, v5, :cond_e

    .line 534
    const-string v4, "BluetoothSettings"

    const-string v7, "updateContent :: startScanning()"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iput-boolean v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 536
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 544
    :cond_5
    :goto_9
    sget-boolean v4, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_f

    .line 545
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 546
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$2;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    .line 560
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 561
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    const v6, 0x7f0400ca

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 562
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 564
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 473
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 478
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0200dc

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    goto/16 :goto_3

    .line 496
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .restart local v2       #numberOfPairedDevices:I
    :cond_a
    move v4, v6

    .line 505
    goto/16 :goto_5

    :cond_b
    move v4, v6

    .line 506
    goto/16 :goto_6

    .line 516
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_7

    .line 528
    .restart local v1       #numberOfAvailableDevices:I
    :cond_d
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v4, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_8

    .line 538
    :cond_e
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_5

    .line 539
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 566
    :cond_f
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    if-eqz v4, :cond_10

    .line 567
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    :cond_10
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 573
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0900b6

    .line 574
    goto/16 :goto_0

    .line 577
    :pswitch_2
    const v0, 0x7f0901d4

    .line 578
    sget-boolean v4, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_0

    .line 583
    :pswitch_3
    const v0, 0x7f0900b5

    goto/16 :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f090096

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 363
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 372
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f0905f3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 375
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f020112

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 378
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f0200f4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 382
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f0200f5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 390
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 392
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_4

    const v0, 0x7f020086

    .line 393
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 392
    .end local v0           #iconId:I
    :cond_4
    const v0, 0x7f020084

    goto :goto_1

    .line 395
    .end local v1           #isDiscovering:Z
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 396
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 169
    sget-boolean v5, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v5, :cond_0

    .line 170
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 204
    :goto_0
    return-void

    .line 173
    :cond_0
    const v5, 0x7f070014

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 177
    .local v2, activity:Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v2, Lmiui/preference/BasePreferenceActivity;

    if-eqz v5, :cond_2

    move-object v4, v2

    .line 180
    check-cast v4, Lmiui/preference/BasePreferenceActivity;

    .line 181
    .local v4, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 184
    .local v3, padding:I
    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 185
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 187
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 194
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_2
    new-instance v5, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-direct {v5, v2, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    .line 196
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 199
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 201
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 674
    const v0, 0x7f0908c6

    return v0
.end method

.method initDevicePreference(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 638
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 165
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 146
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 147
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 596
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 598
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 283
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 647
    const-string v0, "BluetoothSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 649
    if-eqz p1, :cond_0

    .line 651
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 652
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 288
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 290
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f0905f3

    .line 292
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 294
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 317
    :goto_2
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 287
    goto :goto_0

    .line 290
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f090096

    goto :goto_1

    .line 305
    .restart local v2       #textId:I
    :cond_2
    const/4 v3, 0x2

    const v5, 0x7f090092

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f02007f

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    const/4 v3, 0x3

    const v5, 0x7f09008d

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f020079

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    const/4 v3, 0x4

    const v5, 0x7f0900ad

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f020078

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 316
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 611
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 413
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 414
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 357
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 324
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    const-string v2, "BluetoothSettings"

    const-string v3, "onOptionsItemSelected :: startScanning()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 330
    :cond_1
    const-string v2, "BluetoothSettings"

    const-string v3, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 337
    :pswitch_1
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_2
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 267
    :cond_0
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 277
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const-string v0, "BluetoothSettings"

    const-string v1, "onPreferenceTreeClick(mBluetoothScanItem) :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 428
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 426
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->resume()V

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 226
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v0, :cond_3

    .line 227
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->finish()V

    .line 259
    :cond_4
    :goto_0
    return-void

    .line 237
    :cond_5
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    if-eqz v0, :cond_6

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_6

    .line 244
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 245
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mNewOrientation:I

    .line 252
    sget v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mOldOrientation:I

    sget v1, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mNewOrientation:I

    if-eq v0, v1, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->finish()V

    .line 255
    sget v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mNewOrientation:I

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mOldOrientation:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 669
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 605
    return-void
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_0
    const-string v0, "BluetoothSettings"

    const-string v1, "Do startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 408
    return-void
.end method
