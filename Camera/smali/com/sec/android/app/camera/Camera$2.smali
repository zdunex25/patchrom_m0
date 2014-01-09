.class Lcom/sec/android/app/camera/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, action:Ljava/lang/String;
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 584
    const-string v5, "Camera"

    const-string v6, "onReceive - camera is destroying"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 590
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 591
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 595
    :cond_3
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 598
    :cond_4
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 599
    const/4 v2, 0x0

    .line 600
    .local v2, mIsSettingsMMC:Z
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 601
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v5

    if-ne v5, v9, :cond_8

    .line 602
    const/4 v2, 0x1

    .line 608
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 609
    if-eqz v2, :cond_6

    .line 610
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 703
    .end local v2           #mIsSettingsMMC:Z
    :cond_6
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 704
    const/4 v3, 0x0

    .line 706
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v5, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 707
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v6, v9, v3}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 721
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 722
    const-string v5, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CAMERA_ON"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 723
    const-string v5, "Camera"

    const-string v6, "INTENT_MSG_DCMO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 604
    .restart local v2       #mIsSettingsMMC:Z
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 605
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto :goto_1

    .line 611
    .end local v2           #mIsSettingsMMC:Z
    :cond_9
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 615
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    goto :goto_2

    .line 616
    :cond_a
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 617
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 618
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto/16 :goto_2

    .line 619
    :cond_b
    const-string v5, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 620
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    goto/16 :goto_2

    .line 621
    :cond_c
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 622
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 623
    :cond_d
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 625
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    sget v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v5, v6, :cond_e

    .line 626
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 627
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 630
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v5, :cond_6

    .line 631
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 632
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v5, v8}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_2

    .line 636
    :cond_f
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 637
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v5, v6, :cond_13

    .line 639
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    sget v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v5, v6, :cond_11

    .line 640
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 641
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 642
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 644
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 647
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 648
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 649
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 651
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object v10, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 653
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v5, v8}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_2

    .line 657
    :cond_13
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 658
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 660
    :cond_14
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object v10, v5, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 662
    :cond_15
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 663
    const-string v5, "Camera"

    const-string v6, "INTENT_MSG_SECURITY"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 675
    :cond_16
    const-string v5, "com.android.shoot.userchanged"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 676
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto/16 :goto_2

    .line 677
    :cond_17
    const-string v5, "com.android.shootshare.recvfile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 678
    const-string v5, "filepath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 681
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 682
    .local v4, timer:Ljava/util/Timer;
    new-instance v5, Lcom/sec/android/app/camera/Camera$2$1;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/app/camera/Camera$2$1;-><init>(Lcom/sec/android/app/camera/Camera$2;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_2

    .line 693
    .end local v1           #filePath:Ljava/lang/String;
    .end local v4           #timer:Ljava/util/Timer;
    :cond_18
    const-string v5, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 694
    const-string v5, "Camera"

    const-string v6, "onReceive shutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 697
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 698
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    goto/16 :goto_2

    .line 710
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_19
    const-string v5, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 711
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7, v3}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 714
    :cond_1a
    const-string v5, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 715
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v3}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3
.end method
