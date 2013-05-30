.class Lcom/android/server/TvoutService$3;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, action:Ljava/lang/String;
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TvoutService Action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v8, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 318
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 321
    .local v5, bStatus:Z
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TvoutService HDMI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 326
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 328
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    .line 329
    const-string v8, "TvoutService_Java"

    const-string v9, "HDMI is connected, send intent to terminate screen recorder"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.SCREENRECORDER_HDMI"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, SRActionIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 334
    .local v7, msg:Landroid/os/Message;
    const-string v8, "HDMI connected. ScreenRecorder is  turned off"

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    .end local v0           #SRActionIntent:Landroid/content/Intent;
    .end local v7           #msg:Landroid/os/Message;
    :cond_0
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 339
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 340
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 342
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 343
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 344
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 345
    .restart local v7       #msg:Landroid/os/Message;
    const-string v8, "HDMI connected. AllShare Cast turned off"

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    .end local v5           #bStatus:Z
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMART_DOCK_CONNECT  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  HDMI_CONNECT = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    .line 521
    const-string v8, "TvoutService_Java"

    const-string v9, "Creating Smart Dock Surface !!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 530
    :cond_2
    :goto_1
    const-string v8, "persist.sys.camera.connect"

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 350
    .restart local v5       #bStatus:Z
    :cond_3
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8, v5}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 351
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8, v5}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 352
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v8, v5}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 353
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 354
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 355
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 356
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 358
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v9, "/sys/power/mali_lock"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 394
    :cond_4
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v6

    .line 395
    .local v6, cable_status:Z
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8, v5}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 396
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8, v5}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 397
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v8, v5}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 398
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 400
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v9, "/sys/power/mali_lock"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 402
    const-string v8, "persist.sys.camera.transform"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v8, "persist.sys.camera.connect"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 405
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 406
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 407
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto/16 :goto_0

    .line 410
    .end local v5           #bStatus:Z
    .end local v6           #cable_status:Z
    :cond_5
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 413
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Locale changed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 417
    :cond_6
    const-string v8, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 419
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v8

    if-eqz v8, :cond_9

    .line 420
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v9

    add-int/lit16 v9, v9, 0xb4

    rem-int/lit16 v9, v9, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;I)I

    .line 421
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 422
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 423
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 426
    :cond_7
    :goto_2
    const-string v8, "persist.sys.camera.transform"

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_3
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 432
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    .line 433
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 434
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 424
    :cond_8
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 425
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 429
    :cond_9
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_3

    .line 437
    :cond_a
    const-string v8, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 439
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    .line 440
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v9

    add-int/lit16 v9, v9, 0xb4

    rem-int/lit16 v9, v9, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;I)I

    .line 441
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 442
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 443
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 446
    :cond_b
    :goto_4
    const-string v8, "persist.sys.camera.transform"

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_5
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 452
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 453
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 454
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 444
    :cond_c
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 445
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_4

    .line 449
    :cond_d
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v9, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_5

    .line 456
    :cond_e
    const-string v8, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 458
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 459
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 460
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 461
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v8, v9, v10}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 463
    :cond_f
    const-string v8, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 465
    const-string v8, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 467
    .local v3, bAllShareCastConnectedFlag:Z
    if-eqz v3, :cond_10

    .line 468
    const-string v8, "TvoutService_Java"

    const-string v9, "AllShare Cast Connected !!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 470
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 471
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 474
    :cond_10
    const-string v8, "TvoutService_Java"

    const-string v9, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 476
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 477
    const-string v8, "persist.sys.camera.transform"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v8, "persist.sys.camera.connect"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 483
    .end local v3           #bAllShareCastConnectedFlag:Z
    :cond_11
    const-string v8, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 485
    const-string v8, "TvoutService_Java"

    const-string v9, "Screen recorder intent is received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, SRState:Ljava/lang/String;
    const-string v8, "IsRunning"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenRecorder State is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v8, "run"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 491
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 492
    :cond_12
    const-string v8, "stop"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 493
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 496
    .end local v1           #SRState:Ljava/lang/String;
    :cond_13
    const-string v8, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 498
    const-string v8, "android.intent.extra.device_state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 499
    .local v4, bMouseDockedFlag:I
    const-string v8, "TvoutService_Java"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v8, 0x1

    if-ne v8, v4, :cond_14

    .line 502
    const-string v8, "TvoutService_Java"

    const-string v9, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 506
    :cond_14
    if-nez v4, :cond_1

    .line 507
    const-string v8, "TvoutService_Java"

    const-string v9, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;Z)Z

    .line 509
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 512
    .end local v4           #bMouseDockedFlag:I
    :cond_15
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 513
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 515
    :cond_16
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 516
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_17

    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 517
    :cond_17
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 524
    :cond_18
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v8}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 526
    const-string v8, "TvoutService_Java"

    const-string v9, "Mouse Connected to Smart dock But HDMI is disconnected !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v8, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v8}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_1
.end method
