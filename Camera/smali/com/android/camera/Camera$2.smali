.class Lcom/android/camera/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 708
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, action:Ljava/lang/String;
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsDestroying:Z
    invoke-static {v6}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    move-result v6

    if-ne v6, v10, :cond_1

    .line 711
    const-string v6, "Camera"

    const-string v7, "onReceive - camera is destroying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 717
    :cond_2
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 718
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 739
    :cond_3
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 742
    :cond_4
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, mIsSettingsMMC:Z
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 745
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 746
    const/4 v2, 0x1

    .line 757
    :cond_5
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v6, v6, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/MenuBase;

    .line 758
    .local v4, storageMenu:Lcom/android/camera/MenuBase;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 759
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->processBack()V

    .line 762
    :cond_6
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v9, v10}, Lcom/android/camera/Camera;->checkStorage(ZZ)V

    .line 763
    if-eqz v2, :cond_7

    .line 764
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V

    .line 857
    .end local v2           #mIsSettingsMMC:Z
    .end local v4           #storageMenu:Lcom/android/camera/MenuBase;
    :cond_7
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 858
    const/4 v3, 0x0

    .line 860
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 861
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 863
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v7, v10, v3}, Lcom/android/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 875
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 876
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CAMERA_ON"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 877
    const-string v6, "Camera"

    const-string v7, "INTENT_MSG_DCMO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 765
    :cond_9
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 769
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CheckMemory;->isStorageMounted()Z

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/android/camera/Camera;->checkStorage(ZZ)V

    goto :goto_1

    .line 770
    :cond_a
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 771
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 772
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto :goto_1

    .line 773
    :cond_b
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 774
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->updateRemainTime()V

    goto/16 :goto_1

    .line 775
    :cond_c
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 776
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 777
    :cond_d
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 779
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)I

    move-result v6

    sget v7, Lcom/android/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_e

    .line 780
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finishTimerCount()V

    .line 781
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v9}, Lcom/android/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 784
    :cond_e
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-boolean v6, v6, Lcom/android/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v6, :cond_7

    .line 785
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finishTimerCount()V

    .line 786
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;Z)V

    goto/16 :goto_1

    .line 790
    :cond_f
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 791
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget v7, v7, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-gt v6, v7, :cond_13

    .line 793
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)I

    move-result v6

    sget v7, Lcom/android/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_11

    .line 794
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finishTimerCount()V

    .line 795
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 796
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 798
    :cond_10
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v9}, Lcom/android/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 801
    :cond_11
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finishTimerCount()V

    .line 802
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 803
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 805
    :cond_12
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iput-object v11, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 807
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;Z)V

    goto/16 :goto_1

    .line 811
    :cond_13
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 812
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v6, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 814
    :cond_14
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iput-object v11, v6, Lcom/android/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 816
    :cond_15
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 817
    const-string v6, "Camera"

    const-string v7, "INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 829
    :cond_16
    const-string v6, "com.android.shoot.userchanged"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 830
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->refreshDeviceList()V

    goto/16 :goto_1

    .line 831
    :cond_17
    const-string v6, "com.android.shootshare.recvfile"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 832
    const-string v6, "filepath"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 835
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 836
    .local v5, timer:Ljava/util/Timer;
    new-instance v6, Lcom/android/camera/Camera$2$1;

    invoke-direct {v6, p0, v1}, Lcom/android/camera/Camera$2$1;-><init>(Lcom/android/camera/Camera$2;Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 847
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #timer:Ljava/util/Timer;
    :cond_18
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 848
    const-string v6, "Camera"

    const-string v7, "onReceive shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 851
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraEngine;->isTimerCounting()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 852
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraEngine;->doCancelShutterTimer()V

    goto/16 :goto_1

    .line 864
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_19
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 865
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 868
    :cond_1a
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 869
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 871
    iget-object v6, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2
.end method
