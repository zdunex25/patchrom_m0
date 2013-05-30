.class Lcom/sec/android/app/camera/Camcorder$3;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x67

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 385
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, action:Ljava/lang/String;
    const-string v5, "Camcorder"

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

    .line 387
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 388
    const-string v5, "Camcorder"

    const-string v6, "onReceive - camcorder is destroying"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string v5, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 394
    .local v4, myExtras:Landroid/os/Bundle;
    const-string v5, "flash_led_disable"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 396
    .local v1, bLimit:Z
    if-eqz v1, :cond_2

    .line 397
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive - flash off, bLimit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 399
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    invoke-virtual {v5, v11, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 400
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 401
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5, v11, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(II)V

    .line 417
    .end local v1           #bLimit:Z
    .end local v4           #myExtras:Landroid/os/Bundle;
    :cond_2
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 420
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, mIsSettingsMMC:Z
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 423
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 424
    const/4 v2, 0x1

    .line 430
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 431
    if-eqz v2, :cond_5

    .line 432
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 522
    .end local v2           #mIsSettingsMMC:Z
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v5, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 525
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5, v6, v9, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 539
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    const-string v5, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CAMERA_ON"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 541
    const-string v5, "Camcorder"

    const-string v6, "INTENT_MSG_DCMO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 426
    .restart local v2       #mIsSettingsMMC:Z
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 427
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto :goto_1

    .line 433
    .end local v2           #mIsSettingsMMC:Z
    :cond_8
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 434
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v5

    if-nez v5, :cond_9

    .line 435
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    goto/16 :goto_2

    .line 437
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    const/16 v6, 0x75

    invoke-virtual {v5, v6, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_2

    .line 439
    :cond_a
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 440
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 441
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_2

    .line 442
    :cond_b
    const-string v5, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 443
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto/16 :goto_2

    .line 444
    :cond_c
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 445
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 446
    :cond_d
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 448
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v5

    sget v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v5, v6, :cond_e

    .line 449
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 450
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 453
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-boolean v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v5, :cond_5

    .line 454
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 455
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 456
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v5, v8}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 461
    :cond_f
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 462
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v5, v6, :cond_13

    .line 464
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v5

    sget v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v5, v6, :cond_11

    .line 465
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 466
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 467
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 469
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 472
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 473
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 474
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 476
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v12, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 477
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 478
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v5, v8}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 483
    :cond_13
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 484
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 486
    :cond_14
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v12, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 488
    :cond_15
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 489
    const-string v5, "Camcorder"

    const-string v6, "INTENT_MSG_SECURITY"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 500
    :cond_16
    const-string v5, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 501
    const-string v5, "Camcorder"

    const-string v6, "onReceive shutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 504
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 505
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 510
    :cond_17
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 511
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 512
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v5

    if-ge v5, v9, :cond_18

    .line 513
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_2

    .line 515
    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/camera/Camcorder;->access$1902(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 516
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_2

    .line 528
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_19
    const-string v5, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 529
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 531
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 532
    :cond_1a
    const-string v5, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 533
    const-string v5, "DisplayName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3
.end method
