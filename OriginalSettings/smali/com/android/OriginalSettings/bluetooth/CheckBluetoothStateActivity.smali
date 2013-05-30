.class public final Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CheckBluetoothStateActivity.java"


# instance fields
.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method

.method private launchDevicePicker()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    .local v3, in:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, btIntent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 80
    .local v6, needAuth:Z
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, filterType:I
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    .local v2, fromHeadsetActivity:Z
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, launchPackage:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 90
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_0
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, launchClass:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 95
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 64
    .local v0, mBluetoothState:I
    if-nez p1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "onActivityResult:: no condition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 48
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0
.end method
