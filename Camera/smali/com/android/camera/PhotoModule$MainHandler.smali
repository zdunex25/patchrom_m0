.class Lcom/android/camera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setupPreview()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeFirstTime()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;I)V

    goto :goto_0

    .line 406
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)V

    .line 409
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 416
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->showTapToFocusToast()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 421
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 426
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto :goto_0

    .line 431
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 436
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 437
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setCameraState(I)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2500(Lcom/android/camera/PhotoModule;I)V

    .line 438
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 443
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->locationFirstRun()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 448
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 449
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2802(Lcom/android/camera/PhotoModule;Z)Z

    .line 450
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 456
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 457
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mCameraDisabled:Z
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2902(Lcom/android/camera/PhotoModule;Z)Z

    .line 458
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 464
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/camera/PhotoModule;->updateTimer(I)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;I)V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
