.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x5

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 476
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage :: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 480
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->restartTouchAF()V

    goto :goto_0

    .line 484
    :sswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 485
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleAutoFocus()V

    .line 487
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator(I)V

    .line 488
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->stopAFHideRectTimer()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v2

    goto :goto_0

    .line 496
    :sswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 497
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 498
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Lcom/android/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 499
    :catch_1
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Camera"

    const-string v3, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$504(Lcom/android/camera/Camera;)I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 506
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 507
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Lcom/android/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 508
    :catch_2
    move-exception v0

    .line 509
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Camera"

    const-string v3, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mDirtyCount:I
    invoke-static {v2, v5}, Lcom/android/camera/Camera;->access$502(Lcom/android/camera/Camera;I)I

    goto/16 :goto_0

    .line 517
    :sswitch_4
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 518
    .local v1, user:Lcom/samsung/shareshot/User;
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->ackActivateUser(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 520
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :catch_3
    move-exception v0

    .line 521
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 526
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_5
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 527
    .restart local v1       #user:Lcom/samsung/shareshot/User;
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 528
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->rejectActivateUser(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 529
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :catch_4
    move-exception v0

    .line 530
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 534
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_6
    const-string v2, "Camera"

    const-string v3, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/android/camera/Camera;->runDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 544
    :sswitch_7
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 545
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/android/camera/Camera$MainHandler$1;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$MainHandler$1;-><init>(Lcom/android/camera/Camera$MainHandler;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 556
    :sswitch_8
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2, v7}, Lcom/android/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_0

    .line 559
    :sswitch_9
    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/android/camera/Camera;->runComfirmedDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 562
    :sswitch_a
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Lcom/android/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$MainHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mVolumeKeyPressed:Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getTimer()I

    move-result v2

    if-nez v2, :cond_7

    .line 567
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    .line 570
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 573
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    .line 575
    :cond_6
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/android/camera/Camera;->setWaitBurstShot(Z)V

    goto/16 :goto_0

    .line 579
    :cond_7
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Lcom/android/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$MainHandler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Lcom/android/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 588
    :sswitch_b
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 589
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 590
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraEngine;->changeEngineState(I)V

    .line 592
    :cond_8
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 593
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 594
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 595
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 596
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStopEngine()V

    .line 597
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStartEngine()V

    .line 598
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->schedulePostInit()V

    .line 599
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleSetAllParams()V

    .line 601
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 602
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/android/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 603
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 604
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 609
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStartPreview()V

    .line 611
    :cond_a
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mwLostWinFocus:Z
    invoke-static {v2, v5}, Lcom/android/camera/Camera;->access$902(Lcom/android/camera/Camera;Z)Z

    goto/16 :goto_0

    .line 607
    :cond_b
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Lcom/android/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 614
    :sswitch_c
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getSurfaceView()Lcom/android/camera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/PreviewFrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x16 -> :sswitch_4
        0x1b -> :sswitch_5
        0x20 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0x12c -> :sswitch_a
        0x1f4 -> :sswitch_b
        0x1f6 -> :sswitch_c
    .end sparse-switch
.end method
