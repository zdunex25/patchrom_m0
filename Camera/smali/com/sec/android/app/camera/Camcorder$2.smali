.class Lcom/sec/android/app/camera/Camcorder$2;
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
    .line 314
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, action:Ljava/lang/String;
    const-string v3, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 320
    const-string v3, "Camcorder"

    const-string v4, "onReceive - camcorder is destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 326
    :cond_2
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, mIsSettingsMMC:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 329
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 330
    const/4 v1, 0x1

    .line 336
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 337
    if-eqz v1, :cond_4

    .line 338
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 428
    .end local v1           #mIsSettingsMMC:Z
    :cond_4
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, messageDisplayData:Ljava/lang/String;
    const-string v3, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 431
    const-string v3, "DisplayName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3, v4, v7, v2}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 445
    .end local v2           #messageDisplayData:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const-string v3, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CAMERA_ON"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 447
    const-string v3, "Camcorder"

    const-string v4, "INTENT_MSG_DCMO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 332
    .restart local v1       #mIsSettingsMMC:Z
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1100(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto :goto_1

    .line 339
    .end local v1           #mIsSettingsMMC:Z
    :cond_7
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 340
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v3

    if-nez v3, :cond_8

    .line 341
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    goto/16 :goto_2

    .line 343
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    const/16 v4, 0x75

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_2

    .line 345
    :cond_9
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 346
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_2

    .line 348
    :cond_a
    const-string v3, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 349
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto/16 :goto_2

    .line 350
    :cond_b
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 351
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1300(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 352
    :cond_c
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v3

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_d

    .line 355
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 356
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 359
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_4

    .line 360
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 361
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 367
    :cond_e
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 368
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_12

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v3

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_10

    .line 371
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 373
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 375
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 378
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 380
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v9, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 383
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 389
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 392
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v9, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 394
    :cond_14
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 395
    const-string v3, "Camcorder"

    const-string v4, "INTENT_MSG_SECURITY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 406
    :cond_15
    const-string v3, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    const-string v3, "Camcorder"

    const-string v4, "onReceive shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 410
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 411
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 416
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 417
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 418
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v3

    if-ge v3, v7, :cond_17

    .line 419
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_2

    .line 421
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/camera/Camcorder;->access$1602(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 422
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_2

    .line 434
    .restart local v2       #messageDisplayData:Ljava/lang/String;
    :cond_18
    const-string v3, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 435
    const-string v3, "DisplayName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 438
    :cond_19
    const-string v3, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    const-string v3, "DisplayName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3
.end method
