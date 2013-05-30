.class public final Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "DevicePickerActivity.java"


# instance fields
.field private mActivityResultDone:Z

.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 76
    .local v0, mBluetoothState:I
    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 77
    if-nez p1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->finish()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 51
    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 67
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 72
    :cond_0
    return-void
.end method
