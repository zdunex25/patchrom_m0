.class public final Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;
.super Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mCallFromHeadset:Z

.field private mDeviceName:Landroid/preference/Preference;

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mScan:Landroid/view/MenuItem;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 204
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 206
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v0, 0x7f020085

    .line 207
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 206
    .end local v0           #iconId:I
    :cond_2
    const v0, 0x7f020084

    goto :goto_1

    .line 209
    .end local v1           #isDiscovering:Z
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 86
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 88
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 91
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v7, :cond_4

    .line 93
    :cond_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    .line 99
    :goto_1
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 100
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 105
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 107
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_5

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090abe

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 118
    :cond_1
    :goto_2
    return-void

    .line 72
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string v2, "my_device_name"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    .line 75
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    const v3, 0x7f0200ce

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 81
    :goto_3
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    const v3, 0x7f0200dc

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_3

    .line 95
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    iput-boolean v5, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_1

    .line 111
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_5
    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v7, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090abf

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_2
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 258
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0900ae

    const/16 v3, 0xc

    const/4 v1, 0x1

    .line 122
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 135
    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const-string v3, "DevicePickerFragment"

    const-string v4, "onCreateOptionsMenu :: do not creat option menu on Tablet!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 162
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 164
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0905f3

    .line 166
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    .line 168
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_1
    move v0, v4

    .line 161
    goto :goto_1

    .line 164
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_2
    const v2, 0x7f090096

    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 243
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 245
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 252
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 223
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 239
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_2

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 236
    :cond_2
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 175
    :sswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    const-string v1, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: startScanning()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_0

    .line 183
    :cond_1
    const-string v1, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 189
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;II)V
    .locals 2
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v1, 0x2

    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;II)V

    .line 276
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_1

    .line 277
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 282
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 141
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 146
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 270
    return-void
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 218
    return-void
.end method
