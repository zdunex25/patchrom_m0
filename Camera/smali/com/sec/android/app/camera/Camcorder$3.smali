.class Lcom/android/camera/Camcorder$3;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, action:Ljava/lang/String;
    const-string v6, "Camcorder"

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

    .line 408
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1000(Lcom/android/camera/Camcorder;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 409
    const-string v6, "Camcorder"

    const-string v7, "onReceive - camcorder is destroying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 415
    .local v4, myExtras:Landroid/os/Bundle;
    const-string v6, "flash_led_disable"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 417
    .local v1, bLimit:Z
    if-eqz v1, :cond_2

    .line 418
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 420
    const-string v6, "Camcorder"

    const-string v7, "onReceive - flash off"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 422
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x67

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 423
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    const/16 v7, 0x67

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CamcorderEngine;->doChangeParameterSync(II)V

    .line 424
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const v7, 0x7f09017f

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 441
    .end local v1           #bLimit:Z
    .end local v4           #myExtras:Landroid/os/Bundle;
    :cond_2
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 444
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 445
    const/4 v2, 0x0

    .line 446
    .local v2, mIsSettingsMMC:Z
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 447
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 448
    const/4 v2, 0x1

    .line 457
    :cond_4
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v6, v6, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0xbc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/MenuBase;

    .line 458
    .local v5, storageMenu:Lcom/android/camera/MenuBase;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 459
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->processBack()V

    .line 463
    :cond_5
    if-eqz v2, :cond_8

    .line 464
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finish()V

    .line 554
    .end local v2           #mIsSettingsMMC:Z
    .end local v5           #storageMenu:Lcom/android/camera/MenuBase;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 555
    const/4 v3, 0x0

    .line 556
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 557
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v7, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 571
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CAMERA_ON"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 573
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_DCMO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 466
    .restart local v2       #mIsSettingsMMC:Z
    .restart local v5       #storageMenu:Lcom/android/camera/MenuBase;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/Camcorder;->checkStorage(ZZ)V

    goto :goto_1

    .line 467
    .end local v2           #mIsSettingsMMC:Z
    .end local v5           #storageMenu:Lcom/android/camera/MenuBase;
    :cond_9
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 468
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v6

    if-nez v6, :cond_a

    .line 469
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-static {}, Lcom/android/camera/CheckMemory;->isStorageMounted()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/Camcorder;->checkStorage(ZZ)V

    goto :goto_1

    .line 471
    :cond_a
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x75

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_1

    .line 473
    :cond_b
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 474
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 475
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_1

    .line 476
    :cond_c
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 477
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->updateRemainTime()V

    goto/16 :goto_1

    .line 478
    :cond_d
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 479
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #calls: Lcom/android/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/camera/Camcorder;->access$1500(Lcom/android/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 480
    :cond_e
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 481
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1600(Lcom/android/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/android/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_f

    .line 482
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finishTimerCount()V

    .line 483
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 486
    :cond_f
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-boolean v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v6, :cond_6

    .line 487
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finishTimerCount()V

    .line 488
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 489
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    #calls: Lcom/android/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v7}, Lcom/android/camera/Camcorder;->access$1700(Lcom/android/camera/Camcorder;Z)V

    goto/16 :goto_1

    .line 494
    :cond_10
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 495
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1600(Lcom/android/camera/Camcorder;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget v7, v7, Lcom/android/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v6, v7, :cond_14

    .line 496
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$1600(Lcom/android/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/android/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_12

    .line 497
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finishTimerCount()V

    .line 498
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 499
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    :cond_11
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 504
    :cond_12
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v6}, Lcom/android/camera/Camcorder;->finishTimerCount()V

    .line 505
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 506
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 508
    :cond_13
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 509
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 510
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    #calls: Lcom/android/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v7}, Lcom/android/camera/Camcorder;->access$1700(Lcom/android/camera/Camcorder;Z)V

    goto/16 :goto_1

    .line 515
    :cond_14
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 516
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v6, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 518
    :cond_15
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 520
    :cond_16
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 521
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 532
    :cond_17
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 533
    const-string v6, "Camcorder"

    const-string v7, "onReceive shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 536
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 537
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 542
    :cond_18
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 543
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/android/camera/AbstractCeState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 544
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_19

    .line 545
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_1

    .line 547
    :cond_19
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v7, 0x1

    #setter for: Lcom/android/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v6, v7}, Lcom/android/camera/Camcorder;->access$1802(Lcom/android/camera/Camcorder;Z)Z

    .line 548
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_1

    .line 560
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_1a
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 561
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v7, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 564
    :cond_1b
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 565
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    iget-object v6, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    iget-object v7, p0, Lcom/android/camera/Camcorder$3;->this$0:Lcom/android/camera/Camcorder;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2
.end method
