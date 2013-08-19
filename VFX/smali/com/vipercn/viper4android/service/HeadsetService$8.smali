.class Lcom/vipercn/viper4android/service/HeadsetService$8;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/service/HeadsetService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 505
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x418

    const/16 v9, 0x404

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v4, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    .line 512
    .local v4, prevUseHeadset:Z
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v3, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    .line 513
    .local v3, prevUseBluetooth:Z
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Lcom/vipercn/viper4android/service/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 515
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 517
    iget-object v8, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_0
    iput-boolean v5, v8, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    .line 545
    :cond_0
    :goto_1
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Headset="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v7, v7, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Bluetooth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v7, v7, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v5, "ViPER4Android"

    const-string v6, "mRoutingReceiver::onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v5, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iget-boolean v5, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    if-eq v3, v5, :cond_2

    .line 550
    :cond_1
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v5}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    .line 552
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 517
    goto :goto_0

    .line 519
    :cond_4
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 522
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 523
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 524
    .local v2, deviceClass:I
    if-eq v2, v10, :cond_5

    if-ne v2, v9, :cond_0

    .line 526
    :cond_5
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iput-boolean v6, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    goto :goto_1

    .line 529
    .end local v2           #deviceClass:I
    :cond_6
    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 531
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    iput-boolean v6, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    .line 532
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    iput-boolean v6, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseHeadset:Z

    goto :goto_1

    .line 534
    :cond_7
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 538
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 539
    .restart local v2       #deviceClass:I
    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_0

    .line 541
    :cond_8
    iget-object v5, p0, Lcom/vipercn/viper4android/service/HeadsetService$8;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    iput-boolean v7, v5, Lcom/vipercn/viper4android/service/HeadsetService;->mUseBluetooth:Z

    goto/16 :goto_1
.end method
